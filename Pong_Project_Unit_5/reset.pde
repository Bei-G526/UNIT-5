void reset() {
   leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width; 
  righty = height/2; 
  rightd = 200;
  
  // initalize ball
  ballx = width/2; 
  bally = height/2;
  balld = 100;
  vx = random(-3,3);
  vy = random(-3,3);
  
  //initialize score 
  rightscore = leftscore = 0 ; 
  timer = 100;
  
  // initalize keyboards 
  wkey = skey = upkey = downkey =false; 
}
