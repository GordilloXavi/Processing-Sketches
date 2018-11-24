List list;
int size = 250;
int rate = 20;
int col = 255;

void setup(){
 
  list = new List(size);
    
  for(int i = 1; i<= size; ++i)list.set(i-1,i);
  
  list.shuffle();
  
  size(1500, 500);
}

void mouseClicked(){
 list.shuffle();
 list.changeColors();
 col = 0;
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  rate -= (int)e*3;
  if(rate<0)rate = 0;
}

void draw(){
  
  
  println(rate);
  
  frameRate(rate+2);
    
  background(0);
  
  list.sort();
  
  list.show();
  
  textSize(12);
  fill(col);
  text("USE THE MOUSEWHEEL TO CHANGE SPEED. CLICK ON THE SCREEN TO RESET LIST", 0, 12);
  
}
