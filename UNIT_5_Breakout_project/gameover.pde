void gameover () {
  theme.pause();
  image(gif[f], 0, 0, width, height);
  println(frameCount);
  //modulus of mod
  f=f+1;
  if (f == numberOfFrames) f=0;
fill(255,0,0);
  if (lives == 0) {
    textSize(90);
    failure.play();
    text("YOU LOST!", 140, 450);
    textSize(50);
    text("click to restart", 210, 700);
  }

  if (score == 1) {
    success.play();
    textSize(90);
    text("YOU WON!", 140, 450);
    textSize(50);
    text("click to restart", 210, 700);
  }
}

void gameoverClicks() {
  mode=INTRO;
  theme.rewind();
  reset();
  mode=INTRO;
}
