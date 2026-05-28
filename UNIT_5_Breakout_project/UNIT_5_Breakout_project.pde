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
float bottomx, bottomy, bottomd; // paddles
float ballx, bally, balld;//balls
float vx, vy;
//boolean AI;

//keyboard variables
boolean wkey, skey;


void setup() {
  size (700, 800);
  mode = GAME;

  //initalize paddles
  bottomx = width/2;
  bottomy = height;
  bottomd = 200;

  // rightx = width;
  //righty = height/2;
  // rightd = 200;

  // initalize ball
  ballx = width/2;
  bally = height/2;
  balld = 15;
  vx = random(-3, 3);
  vy = random(-3, 3);

  //initialize score
  // rightscore = leftscore = 0 ;
  //timer = 100;

  // initalize keyboards
  wkey = skey =true;

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
