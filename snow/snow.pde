
flake[] snow;
int size = 5;

void setup(){

  snow = new flake[size];
  for(int i = 0; i<size; ++i){
    snow[i] = new flake((int)random(5,10), (int)random(0,width));
  }

  background(0);

  size(1000, 500);

} 

void draw(){

  background(0);
  for(int i = 0; i<size; ++i){
    snow[i].move();
    snow[i].show();
  } 


} 
