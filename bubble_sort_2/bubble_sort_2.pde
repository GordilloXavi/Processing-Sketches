List list;
final int size = 50;//CHANGE THIS PARAMETER TO MODIFY THE SIZE OF THE ARRAY THAT IS TO BE SORTED
int rate = 20;//Initial framerate. Can be chaged with the mousewheel
int i = 0;
int sz = size-1;
void setup(){
 
  list = new List(size);
    
  for(int i = 1; i<= size; ++i)list.set(i-1,i);
  
  list.shuffle();
  
  size(1500, 500);

  //fullScreen();//Make if full screen for a more immersive sorting experience
}

void mouseClicked(){//Restar the whole visualization on click
  loop();
  i = 0;
  sz = size-1;
  list.shuffle();
}

void mouseWheel(MouseEvent event) {//Increase framerate on musewheel event.
  float e = event.getCount();
  rate -= (int)e*3;
  if(rate<0)rate = 0;
}

boolean isSorted(List l){//Check if list is sorted...
  
  for(int i = 0; i<l.size()-1; ++i)if(l.get(i) > l.get(i+1))return false;
  
  return true;
  
}



void draw(){
  
  
  
  if(i == sz){//We make one less iteration for each time we traverse the list, because we already know the biggest element is in the highes position, and so on
    i = 0;
     sz--; 
  }
      
  frameRate(rate+size/4);

    
  background(0);
  
  
  list.sort(i);//Do ONE ITERATION of the sorting alorithm
  
  if(isSorted(list)){//We can stop if the list is sorted... We will resume once we click on the screen
    noLoop();  
  }
  list.show(i);//Now show me a visualization of the list however it is right now!
  
  i++;//Increment the iterator
  
  
}
