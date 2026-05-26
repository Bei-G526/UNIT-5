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
