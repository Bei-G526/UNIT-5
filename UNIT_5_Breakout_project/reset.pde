void reset() {
   score = 0;
  lives = 3; 
 
  //initalize paddles
  paddlex = width/2;
  paddley = height;
  paddled = 100;

  // initalize ball
  ballx = width/2;
  bally = height-200;
  balld = 10;
  vx = 0;
  vy = 1;
  
  // set up array of bricks 
  brickd = 50;
  n = 20; 
  x = new int [n]; // instantiation
  y = new int [n];
  alive = new boolean [n]; 
  tempx = 100; 
  tempy = 100;
  int i = 0;
  while (i<n) {
    x[i]= tempx;
    y[i] = tempy;
    alive[i] = true ; 
    tempx = tempx +150;
    if (tempx > width) {
      tempx = 100;
      tempy = tempy +100;
    }
    i=i+1; 
  }
}
