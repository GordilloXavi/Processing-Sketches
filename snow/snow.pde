
flake[] snow;
int size =1300 ;

void setup(){

  snow = new flake[size];
  for(int i = 0; i<size; ++i){
    if(i<200)snow[i] = new flake((int)random(5,16), (int)random(100,width + 100));
    else snow[i] = new flake(int(random(1,6)), int(random(200, width+900)));

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
