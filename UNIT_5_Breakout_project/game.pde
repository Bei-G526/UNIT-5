void game () {
  background(0);

  //draw paddles
  fill(255);
  circle(paddlex, paddley, paddled);
  //move paddles
  if (wkey) paddlex = paddlex -5 ;
  if (skey) paddlex = paddlex+5;

  //draw balls
  fill(255);
  circle(ballx, bally, balld);
  // move ball
  ballx=ballx+vx;
  bally=bally+vy;
  
  //bouncing
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx* -1;
  }
  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy *-1;
  }
  if (dist(ballx, bally, paddlex, paddley) < balld/2 + paddled/2) {
    vx = (ballx-paddlex)/10;
    vy = (bally-paddley)/10;
  }
  if (bally>815) {
    ballx = width/2; 
    bally = height/2;
}
}

void gameClicks() {
}
