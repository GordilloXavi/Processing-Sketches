timer timer;
void setup(){

 // size(500,500);
 fullScreen();
  background(0);

  timer = new timer();

} 

void keyPressed(){
  if(key == ' '){

  if(timer.started){
    timer.stop();
  }else timer.start();
  } 
} 

void mouseClicked(){
  
  if(timer.started){
    timer.stop();
  }else timer.start();
  
} 

void draw(){

  background(0);
  timer.update();
  timer.show();
} 
