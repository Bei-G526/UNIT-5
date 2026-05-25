void pause (){
  theme.pause();
  fill(255,0,0);
  textSize(200);
  text("PAUSE", 125,350);
}

void pauseClicks() {
  mode = GAME;
  theme.play();
}
