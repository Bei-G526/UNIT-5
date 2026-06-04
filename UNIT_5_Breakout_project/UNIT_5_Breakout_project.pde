import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// sound variables
Minim minim;
AudioPlayer theme, success, failure;

// mode framework
int mode;
final int INTRO = 1;
final int GAME = 2 ;
final int PAUSE = 3;
final int GAMEOVER = 4 ;

// entity variables
float paddlex, paddley, paddled; // paddles
float ballx, bally, balld;//balls
float vx, vy;
//boolean AI;

//keyboard variables
boolean wkey, skey;

//brick variables 
int [] x; // declaration
int [] y; 
boolean[] alive;
int brickd; 
int n;
int tempx , tempy ; 

void setup() {
  size (800, 800);
  mode = GAME ;

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
  tempx = 100; 
  tempy = 100;
  int i = 0;
  while (i<n) {
    x[i]= tempx;
    y[i] = tempy;
    tempx = tempx +150;
    if (tempx > width) {
      tempx = 100;
      tempy = tempy +100;
    }
    i=i+1; 
  }
  // minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
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
