void gameover () {
  theme.pause();
  textSize(200);
  fill(0,255,0);
  if (rightscore == 3) {
  text("RIGHT", 150, height/2);
  text("WINS", 190, 500);
  }
  fill(255,0,0);
  if (leftscore == 3) {
    text ("LEFT" , 200, height/2);
    text("WINS",190,500);
  }
  
  //if (leftscore>rightscore){
}

void gameoverClicks (){
  mode=INTRO;
  theme.rewind();
}
