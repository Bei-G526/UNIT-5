
void intro(){
  theme.play();
 
  background(255,247,3);
  fill(255);
  tactileRect (200,550,250,100);
  rect(200,550,250,100);
  tactileRect(600,550,250,100);
  rect(600,550,250,100);
  textSize(80);
  fill(0);
  stroke(0);
  strokeWeight(6);
  text("CLICKER GAME",width/2,300);
  textSize(60);
  text("START",200,550);
  text("OPTIONS",600,550);
  
}

void introClicks(){
 if (mouseX>75 && mouseX<325 && mouseY >500 && mouseY<600){
   mode=GAME;
}
 if (mouseX> 475 && mouseX<725 && mouseY > 500 && mouseY< 600){
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
