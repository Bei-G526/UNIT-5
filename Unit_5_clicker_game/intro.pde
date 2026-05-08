
void intro(){
  theme.play();
 
  background(255,247,3);
  fill(255);
  rect(400,500,200,100);
  textSize(80);
  fill(0);
  stroke(0);
  strokeWeight(6);
  text("CLICKER GAME",400,320);
  textSize(60);
  text("Start",400,500);
  
}

void introClicks(){
 if (mouseX>300 && mouseX<500 && mouseY >450 && mouseY<550){
   mode=GAME;
}
}
