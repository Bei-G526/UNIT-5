import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Unit 5 Clicker game

//mode framwork
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE =2 ;
final int GAMEOVER =3 ;
final int OPTION = 4; 
// TARGET VARIABLE --------------------------------------------------
float x, y,d;
int score, lives;
//BOUNCING
//float x,y,d;
float vx,vy;

// sound variables 
Minim minim; 
AudioPlayer theme, success, failure;

//COLOR PALLETTE ---------------------------------

void setup() {
  size (800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //target initialization
  x=width/2;
  y=height/2;
  score=0;
  lives=3;

  //BOUNCING
  //x=width/2;
  //y=height/2;
 d=100;
  vx = random (-5,5);
  vy= random (-5,5);
  
  // minim 
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
 success = minim.loadFile("SUCCESS.wav");
 failure = minim.loadFile("FAILURE.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode== GAMEOVER) {
    gameover();
  } else if (mode == OPTION) {
    option();
  } else {
    println("Error:Mode =" +mode);
  } 
}
