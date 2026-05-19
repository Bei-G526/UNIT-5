
void game() {
  background(209, 228, 255);
 theme.play();
  fill(0);
  text("Score:" + score, width/2, 50);
  text("Lives:" +lives, width/2, 120);
  text("Highscore" + highscore, width/2 , 190);

  //strokeWeight(5);
  //f/ill(255);
  //ellipse(x, y, 100, 100);
  
  // pause button
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  
  // display 
  fill(SelectedColor);
  stroke(0);
  strokeWeight(5);
  circle(x,y,circleSize);

  //BOUNCING
  //display target
  //fill(255);
  //stroke(0);
  //strokeWeight(5);
  //circle(x, y, d);

  //moving
  x=x+vx;
  y=y+vy;

  //bouncing
  if (x<circleSize/2|| x > width-circleSize/2) {
    vx = vx*-1;
  }
  if (y<circleSize/2 || y>height-circleSize/2) {
    vy=vy*-1;
  }
}

void gameClicks () {
  if (dist(mouseX,mouseY,x,y) <circleSize){
    score = score + 1 ; 
    vx = vx * 1.1; 
    vy = vy * 1.1; 
    score = score +1;
    success.rewind();
    success.play();
  } else if (dist (mouseX,mouseY,100,100)<50){
    mode = PAUSE;
  } else {
    lives=lives-1;
    failure.rewind();
    failure.play();
    if (lives==0) mode = GAMEOVER;
  }
  if (score>highscore){
    highscore = score;
  }
}
