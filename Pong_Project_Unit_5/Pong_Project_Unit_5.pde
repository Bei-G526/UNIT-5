//Pong 

// mode framework
int mode;
final int INTRO =  1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4; 

// entity variables 
float leftx,lefty,leftd,rightx,righty, rightd; // paddles
float ballx,bally, balld;//balls 
float vx,vy;

// scoring 
int leftscore,rightscore,timer; 
// keyboard variables 
boolean wkey,skey,upkey,downkey;


void setup(){
  size (800,600);
  mode = GAME;
  
  //initalize paddles
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
  
  // initalize keyboards 
  wkey = skey = upkey = downkey =false; 
}


void draw() {
  if (mode == INTRO) {
    intro ();
  } else if (mode == GAME) {
    game ();
  } else if (mode == PAUSE) {
    pause ();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error:" + mode);
  }
}
