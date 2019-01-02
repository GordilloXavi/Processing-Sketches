float angle = 0.01;


void setup(){

  size(1000, 900, P3D);
  //fullScreen();
 

} 

void draw(){

  angle+= random(0.01, 0.1);
  background(255);
  translate(width/2, height/2, 0); 
  rotateY(angle);
  rotateX(angle);
  noFill();
  strokeWeight(50*abs(sin(angle)));
  box(300*cos(angle));

} 
