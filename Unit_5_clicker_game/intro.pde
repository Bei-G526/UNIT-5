
void intro(){
  background(255);
  
  rect(400,500,200,100);
}

void introClicks(){
 if (mouseX>300 && mouseX<500 && mouseY >450 && mouseY<550){
   mode=GAME;
 }
}
