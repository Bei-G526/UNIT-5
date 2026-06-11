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
int score ,  lives ; 

//keyboard variables
boolean wkey, skey;

//brick variables 
int [] x; // declaration
int [] y; 
boolean[] alive;
int brickd; 
int n;
int tempx , tempy ; 

// gif 
PImage [] gif; 
int numberOfFrames;
int f; 

color red = #FF534D; 
color orange = #FF954D;
color yellow = #FFDC4D;
color green = #4DFFBC;
color blue = #4D5DFF; 

void setup() {
  size (800, 800);
  mode = INTRO ;
  
  // target initialization
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
  // minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
  
  // gif 
   numberOfFrames = 37;
  gif = new PImage[numberOfFrames];
  
  int p = 0;
  while (p <numberOfFrames ) {
    gif[p] = loadImage("frame_"+p+"_delay-0.03s.gif");
    p++; 
   
  }
  
  //WORD FONT 
  PFont myFont = loadFont("KristenITC-Regular-48.vlw");
  textFont(myFont);
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
