void game () {
  background(0); 
  
  //paddles
  fill(255);
  circle(bottomx,bottomy,bottomd);
  
  //draw balls 
  fill(255);
  circle(ballx,bally,balld);
  
  //move paddles
  if (wkey == true) bottomx = bottomx -5 ;
  if (skey == true) bottomx = bottomx+5;

 // if ( AI == false) {
    //if (upkey == true) righty = righty - 5;
   // if (downkey == true) righty = righty + 5;
  //} else {
   // if (ballx > 400) {
    //  if (bally>righty) righty = righty+5;
     // if (bally<righty) righty = righty-5;
   // }
  }


  //move ball
 // if (timer < 0) {
    //ballx=ballx+vx;
   // bally=bally+vy;
 // }
//}
