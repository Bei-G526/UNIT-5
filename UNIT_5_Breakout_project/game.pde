void game () {
  background(0);


  fill(128,15,250);
  textSize (40);
  text ( "Score:" + score, 80, 770);
  text ("Lives:" + lives, 590, 770);
  // bricks ----------------------------
  int i = 0;
  while (i<n) {
    if (alive [i] == true) {
      manageBrick(i) ;
    }
    i++;
  }

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
  if (bally < balld/2) {
    vy = vy *-1;
  }

  if (bally > height) {
    lives = lives - 1;
    failure.play();
    ballx = width/2;
    bally = height/2+50;
    if (lives == 0 ) mode = GAMEOVER;
  }

  if (dist(ballx, bally, paddlex, paddley) < balld/2 + paddled/2) {
    vx = (ballx-paddlex)/10;
    vy = (bally-paddley)/10;
  }

  if (score == 1) mode = GAMEOVER;
}

void gameClicks() {
  mode = PAUSE;
}

void manageBrick (int i) {
  if (y[i] == 100) fill (red);
  if (y[i] == 200) fill (orange);
  if (y[i] == 300) fill (yellow);
  if (y[i] == 400) fill (green);
  circle (x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i]) < balld/2 + brickd/2) {
    score = score + 1;
    vx = (ballx-x[i])/10;
    vy = (bally-y[i])/10;
    alive[i] = false;
    success.rewind();
    success.play();
 
  }
}
