void game () {
  background(0);
  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //scoreboard
  textSize(50);
  fill(255, 0, 0);
  text(leftscore, width/4, 100);
  text(timer, width/4, 500);
  timer = timer - 1 ;
  fill(0, 255, 0);
  text(rightscore, 3*width/4, 100);
  text(timer, 3*width/4, 500);
  timer = timer - 1;

  //draw paddles
  fill(255, 0, 0);
  circle(leftx, lefty, leftd);
  fill(0, 255, 0);
  circle (rightx, righty, rightd);

  //draw ball
  fill(219, 194, 168);
  circle (ballx, bally, balld);

  //move paddles
  if (wkey == true) lefty = lefty -5 ;
  if (skey == true) lefty = lefty+5;

  if ( AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
    if (ballx > 400) {
      if (bally>righty) righty = righty+5;
      if (bally<righty) righty = righty-5;
    }
  }


  //move ball
  if (timer < 0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }

  //scoring
  if (ballx<-60) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
      failure.rewind();
    failure.play();
    if (rightscore == 3) mode = GAMEOVER;
  }
  if (ballx>860) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
      failure.rewind();
    failure.play();
    if (leftscore==3) mode = GAMEOVER;
  }

  //bouncing
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = vy * -1;
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = (ballx-rightx)/10;
    vy = (bally-righty)/10;
    success.rewind();
    success.play();
  }
  if (dist(ballx, bally, leftx, lefty) < balld/2+leftd/2) {
    vx = (ballx-leftx)/10;
    vy = (bally-lefty)/10;
    success.rewind();
    success.play();
  } 
}

void gameClicks () {
  mode = PAUSE;
}
