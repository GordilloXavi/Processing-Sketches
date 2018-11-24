List list;
int size = 250;

void setup(){
  
  list = new List(size);
    
  for(int i = 1; i<= size; ++i)list.set(i-1,i);
  
  list.shuffle();
  
  size(1500, 500);
}

void mouseClicked(){
 list.shuffle();
 list.changeColors();
}

void draw(){
  
  frameRate(2+mouseX/18);
    
  background(0);
  
  list.sort();
  
  list.show();
  
  
  
  
  
  
}
