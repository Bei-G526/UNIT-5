void intro () {
  background(255,231,209);
  fill(255);
  tactileRect(100,350,250,125);
  rect(100,350,250,125);
  tactileRect(450,350,250,125);
  rect(450,350,250,125);
  textSize(200);
  fill(0);
  text("PONG", 160, 250);
  textSize(60);
  text("1 PLAYER", 110,430);
  text("2 PLAYER", 460,430);
}

void introClicks(){
  //1 player
   if (mouseX>100 &&mouseX<350 && mouseY>350 &&mouseY<475){
     mode = GAME;
     //intro.pause();
     //intro.rewind();
     AI = true;
   }
   // 2 player 
     if (mouseX>450 && mouseX < 700 && mouseY>350 && mouseY<475){
     mode = GAME;
     //intro.pause();
     //intro.rewind();
     AI = false;
     }
}

void tactileRect(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
    stroke(255,0,0);
  }else{
    stroke(0);
  }
}
