void intro () {
  theme.play();
  
  background(255);


  image(gif[f], 0, 0, width, height);
  println(frameCount);
  //modulus of mod
  f=f+1;
  if (f == numberOfFrames) f=0;

  fill(255);
  textSize(90);
  text("BREAKOUT", 120, 450);
}


void introClicks () {
  mode = GAME;
}
