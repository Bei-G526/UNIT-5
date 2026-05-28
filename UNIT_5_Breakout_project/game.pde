void game () {
  background(0);

  //draw paddles
  fill(255);
  circle(bottomx, bottomy, bottomd);
  //move paddles
  if (wkey) bottomx = bottomx -5 ;
  if (skey) bottomx = bottomx+5;

  //draw balls
  fill(255);
  circle(ballx, bally, balld);


  // if ( AI == false) {
  //if (upkey == true) righty = righty - 5;
  // if (downkey == true) righty = righty + 5;
  //} else {
  // if (ballx > 400) {
  //  if (bally>righty) righty = righty+5;
  // if (bally<righty) righty = righty-5;
  // }

  //move ball
  // if (timer < 0) {
  ballx=ballx+vx;
  bally=bally+vy;

  //bouncing
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx* -1;
  }
  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy *-1;
  }
  if (dist(ballx, bally, bottomx, bottomy) < balld/2 + bottomd/2) {
    vx = (ballx-bottomx)/10;
    vy = (bally-bottomy)/10;
    //success.rewind();
    //   success.play();
  }
  // if (dist(ballx, bally, leftx, lefty) < balld/2+leftd/2) {
  // vx = (ballx-leftx)/10;
  //vy = (bally-lefty)/10;
  //success.rewind();
  //success.play();
  // }
}
// }
//}

void gameClicks() {
}
