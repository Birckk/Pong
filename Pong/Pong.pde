Player playr;
AIopponent AI;
Ball bl;

int right = 0;
int left = 0;

void setup()   {
  size (600,300,P2D);
  smooth();
  fill(250,20,60);
  playr = new Player();
  AI = new AIopponent();
  bl = new Ball();
  
}

void draw(){
  background(250,100,150);
  bl.display();
  AI.display();
  playr.display();

  print(playr.y);

//points
fill(0,0,0);
text(right,width/2+100,20); //right
text(left,width/2-100,20); //left
fill(250,140,140);

//win
  if (bl.x >= width-bl.radius){
    bl.x = 300;
    left = left+1;
    bl.xspeed = 2;
    bl.yspeed = 1;
  }
  if (bl.x < 0){
    bl.x = 300;
    right = right+1;
    bl.xspeed = 2;
    bl.yspeed = 1;
  }

//bot and top
  if (bl.y > 285){
    bl.yspeed = -1*bl.yspeed;
    bl.y = 285;
  }
  if (bl.y < 15){
    bl.yspeed = -1*bl.yspeed;
    bl.y = 15;
  }


// collisions player
  if (collision(bl.x,bl.y,bl.radius, playr.x, playr.y, playr.w, playr.h) && playr.y+15<bl.y && bl.y<playr.y+55){ //midt
     bl.xspeed = -bl.xspeed;
     bl.x = playr.x-bl.radius;
     bl.xspeed = bl.xspeed*1.1;
     bl.yspeed = bl.yspeed*random(0.8,1.0);
  }
  if (collision(bl.x,bl.y,bl.radius, playr.x, playr.y, playr.w, playr.h) && bl.y<playr.y+15){ //top
     bl.xspeed = -bl.xspeed;
     bl.x = playr.x-bl.radius;
     bl.xspeed = bl.xspeed*1.1;
     bl.yspeed = abs(bl.yspeed)*-random(1.1,1.3);
  }
  if (collision(bl.x,bl.y,bl.radius, playr.x, playr.y, playr.w, playr.h) && bl.y>playr.y+55){ //bot
     bl.xspeed = -bl.xspeed;
     bl.x = playr.x-bl.radius;
     bl.xspeed = bl.xspeed*1.1;
     bl.yspeed = abs(bl.yspeed)*random(1.1,1.3);
  }
  
// collision AI
  if (collision(bl.x,bl.y,bl.radius, AI.x, AI.y, AI.w, AI.h)){
     bl.xspeed = -bl.xspeed;
     bl.x = 60;
     bl.yspeed = bl.yspeed*random(0.5,1.6);
  }
  
}