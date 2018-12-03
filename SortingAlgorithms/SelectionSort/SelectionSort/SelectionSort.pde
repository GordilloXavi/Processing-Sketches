List list;
int currentIteration = 0;
int rate = 60;
color col = color(0,255,0);
void setup(){
  
  size(800,405);
  background(0);
  
  list = new List(200);
  //list.selectionSort();
  list.display();
}

void mouseClicked(){//click the screen to reset simulation
  list.scramble();
  currentIteration = 0;
  col = color(random(50,255),random(50,255),random(50,255));//get a random new list every time
  //list = new List((int)random(10,400));
}

void mouseWheel(MouseEvent e){//Use the mouse wheel to change the frame rate
  
  float x = e.getCount();
  
  if( x>0 && rate > 5 || x < 0 && rate < 90)rate-=x;
  
}

void draw(){
  
    background(0);
    frameRate(rate);
    
    if(currentIteration < list.size)list.selectionSortI(currentIteration);

    list.show(col);

    currentIteration++;
  
}
