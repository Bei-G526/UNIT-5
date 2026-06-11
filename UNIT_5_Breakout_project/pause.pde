void pause () {
   image(gif[f], 0, 0, width, height);
  println(frameCount);
  //modulus of mod
  f=f+1;
  if (f == numberOfFrames) f=0;
  fill(250,211,15);
  textSize(90);
  text("PAUSE!", 230, 450);
}

void pauseClicks(){
  
  mode = GAME;
  
}
