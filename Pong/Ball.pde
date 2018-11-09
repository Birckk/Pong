class Ball {
 float x = 300;
 float y = 150;
 float radius = 15;
 float h = radius*2;
 float w = radius*2;
 float xspeed = 3;
 float yspeed = 1;
 
 void display(){
   ellipse(x,y,h,w);
   x = x+xspeed;
   y = y+yspeed;
  
   
 }
}

boolean collision(float x, float y, float radius, float rx, float ry, float rw, float rh) {
  // temporary variables to set edges for testing
  float checkX = x;
  float checkY = y;

  // which edge is closest?
  if (x < rx)         checkX = rx;      // test left edge
  else if (x > rx+rw) checkX = rx+rw;   // right edge
  if (y < ry)         checkY = ry;      // top edge
  else if (y > ry+rh) checkY = ry+rh;   // bottom edge

  // get distance from closest edges
  float distX = x-checkX;
  float distY = y-checkY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= radius) {
    return true;
  }
  return false;
}