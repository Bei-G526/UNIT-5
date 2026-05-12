
void pause(){
    theme.pause();
    fill(0);
    text("PAUSE", width/2, height/2);
}

void pauseClicks(){
  if (dist (mouseX,mouseY,100,100)<50){
    mode = GAME;
  } 
}
