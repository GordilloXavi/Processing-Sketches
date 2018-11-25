List list;
final int size = 500;//CHANGE THIS PARAMETER TO MODIFY THE SIZE OF THE ARRAY THAT IS TO BE SORTED
int rate = 20;
int i = 0;

void setup(){
 
  list = new List(size);
    
  for(int i = 1; i<= size; ++i)list.set(i-1,i);
  
  list.shuffle();
  
  //size(1500, 500);

  fullScreen();
}

void mouseClicked(){
 list.shuffle();
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  rate -= (int)e*3;
  if(rate<0)rate = 0;
}

boolean isSorted(List l){
  
  for(int i = 0; i<l.size()-1; ++i)if(l.get(i) > l.get(i+1))return false;
  
  return true;
  
}

void draw(){
  
  if(isSorted(list))noLoop();
  
  i = i%(list.size-1);
    
  frameRate(rate+size/4);

    
  background(0);
  
  list.sort(i);
  
  list.show(i);
  
  i++;
  
  
}
