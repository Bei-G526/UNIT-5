color blue = #76A3FF;
color purple = #BA76FF;
color pink = #FF76B2; 
color SelectedColor = blue;
float sliderY = 400 ;
float circleSize=100;

void option (){
  theme.play();
  background(255);
  fill(255);
  strokeWeight(1);
  textSize (80);
  fill(0);
  text("OPTIONS",width/2,150);
  
  // OK button 
  tactileRect(650,500,120,120);
  noFill();
  rect(650,500,120,120);
  textSize(60);
  text("OK",650,500);
  
  //option button 
  //blue 
  tactile(200,300,50);
  fill(blue);
  circle(200,300,100);
  
  //purple 
  tactile(400,300,50);
  fill(purple);
  circle(400,300,100);
  
  //pink 
  tactile(600,300,50);
  fill(pink);
  circle(600,300,100);
  
  //slider
  stroke(0);
  strokeWeight(5);
  line(200,400,200,600);
  fill(255);
  stroke(0);
  circle(200,sliderY,30);
  circleSize = map(sliderY,400,600,10,255);
  
  //indicator 
  stroke(0);
  fill(SelectedColor);
  circle(400,530,circleSize);
}
void optionClicks (){
  //blue button 
  if (dist(200,300,mouseX,mouseY)<50){
    SelectedColor = blue ; 
  }
  // purple button 
  if (dist (400,300,mouseX,mouseY) < 50){ 
    SelectedColor = purple; 
  }
  // pink button
  if (dist(600,300,mouseX,mouseY)<50){
    SelectedColor = pink;
  }
  if (mouseX>590 && mouseX<710 && mouseY>440 && mouseY<560){
    mode = INTRO;
  }
}

//tactile
void tactile (int x, int y, int r){
  if (dist(x,y,mouseX,mouseY)<r){
    stroke(0);
  }else {
   stroke(255);
  }
}

//slider 
void controlSlider(){
  if (mouseX > 175 && mouseX < 225 && mouseY > 400 && mouseY < 600){
    sliderY = mouseY;
    //size
    circleSize = map(sliderY, 400,600,10,255);
  }
}

void mouseDragged (){
  if (mode == OPTION){
    controlSlider();
  }
}
