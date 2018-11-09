//done
class Player {
  float x = 560;
  float y = 0;
  float h = 70;
  float w = 20;
  
  void display (){
   fill(250,140,140);
   rect(x,y,w,h); 
   y = mouseY-h/2;
    if (mouseY >= 300-h/2) {
     y = 230;
      }
    if (mouseY <= 0+h/2) {
     y = 0;
      }
  }
}
// done

//done
class AIopponent {
  float x = 20;
  float y = 150;
  float h = 70;
  float w = 20;
  
  void display (){
   fill(250,140,140);
   rect(x,y,w,h); 
    if (bl.y-35 < y) {
     y = y-2;
      }
    if (bl.y-35 > y) {
     y = y+2;
      }
    if (y >= 230) {
     y = 230;
      }
    if (y <= 0) {
     y = 0;
      }
  }
}
//done

/* //possible 1v1 mode players
class Player1 {
  
  void display (){
   fill(250,140,140);
   rect(560,mouseY,20,70); 
  }
  
}


class Player2 {
  
  void display (){
   fill(250,140,140);
   rect(560,mouseY,20,70); 
  }
  
}
*/