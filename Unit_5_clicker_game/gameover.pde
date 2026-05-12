
void gameover() {
  background(255,0,0);
  theme.pause();
  text("GAMEOVER", width/2, height/2);
}

void gameoverClicks (){
  mode=INTRO;
  theme.rewind();
}
