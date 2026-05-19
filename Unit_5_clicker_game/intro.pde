
void intro(){
  theme.play();
 
  background(255,231,209);
  fill(255);
  tactileRect (200,550,270,100);
  rect(200,550,270,100);
  tactileRect(600,550,270,100);
  rect(600,550,270,100);
  textSize(80);
  fill(0);
  stroke(0);
  strokeWeight(6);
  text("CLICKER GAME",width/2,300);
  textSize(50);
  text("START",200,550);
  text("OPTIONS",600,550);
  
}

void introClicks(){
 if (mouseX>65 && mouseX<335 && mouseY >500 && mouseY<600){
   mode=GAME;
}
 if (mouseX> 465 && mouseX<735 && mouseY > 500 && mouseY< 600){
   mode = OPTION;
 }
}

void tactileRect (int x, int y, int w,int h) {
  if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2){
    stroke(255,0,0);
  }else{
    stroke(0);
  }
}
