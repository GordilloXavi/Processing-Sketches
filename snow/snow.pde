
flake[] snow;
int size =500 ;

void setup(){

  snow = new flake[size];
  for(int i = 0; i<size; ++i){
    snow[i] = new flake((int)random(1,16), (int)random(0,width));
  }

  background(0);

  //size(1100, 700);
  fullScreen();

} 



void draw(){

  background(0);
  for(int i = 0; i<size; ++i){
    snow[i].move();
    snow[i].show();
  } 


} 
