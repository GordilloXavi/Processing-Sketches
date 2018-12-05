List list;
int selectionIteration = 0;
int insertionIteration = 1;
int bubbleIteration = 0;
int rate = 60;
boolean loopActivated = false;

void setup(){
  
  size(1610,810);
  background(0);
  list = new List(401);//To increase the SIZE, we midht want to play width the width of the window
  //401 seems to be a good size with size(1610,810);
    
}

void mouseClicked(){//click the screen to reset simulation
  list.scramble();
  selectionIteration = 0;
  insertionIteration = 1;
  bubbleIteration = 0;
  }

void mouseWheel(MouseEvent e){//Use the mouse wheel to change the frame rate
  
  float x = e.getCount();
  
  if( x>0 && rate > 5 || x < 0 && rate < 90)rate-=x;
  
}
void keyPressed(){
  
  if(key == 'l')loopActivated = !loopActivated;
  
}

void draw(){
   
    frameRate(rate);

    background(0);
    
    if(!list.sorted(list.selectionList))list.selectionSortI(selectionIteration);
    if(!list.sorted(list.insertionList))list.insertionSortI(insertionIteration);
    if(!list.sorted(list.bubbleList))list.bubbleSort(bubbleIteration);
    
    list.drawCross();

    list.showInsert();
    list.showSelect();
    list.showBubble();
    list.showMerge();
    
    selectionIteration++;
    insertionIteration++;
    bubbleIteration++;
   
    if(loopActivated && list.sorted(list.insertionList) && list.sorted(list.selectionList) && list.sorted(list.bubbleList))mouseClicked();
  
}
