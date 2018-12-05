class List{
  
  color colB = color(255,0,50);
  color colS = color(255,0,50);
  color colI = color(255,0,50);
  color colM = color(255,0,50);

  
  IntList list;
  IntList insertionList;
  IntList bubbleList;
  IntList selectionList;
  IntList mergeList;
  
  int Bcount = 0, Icount = 0, Scount = 0, Mcount = 0;


  int size;
  
  public List(int size){
    
    this.size = size;
    
    makeLists(size);
    
  }
  
  void printList(IntList list){
    for(int i = 0; i<size; ++i){
      print(list.get(i) + " ");
      }println();
  }
  
  
  void  makeLists(int size){
        
    IntList l = new IntList(size);
    
    for(int i = 1; i<=size; ++i){
      
      l.set(i-1, i);
      
    }
    
    l.shuffle();
    
    list = l.copy();
    insertionList = list.copy();
    bubbleList = list.copy();
    selectionList = list.copy();
    mergeList = list.copy();
    
  }
  
  void scramble(){
   
    list.shuffle();
    insertionList = list.copy();
    bubbleList = list.copy();
    selectionList = list.copy();
    mergeList = list.copy();
    
    colB = color(255,0,50);
    colI = color(255,0,50);
    colS = color(255,0,50);
    colM = color(255,0,50);
    Bcount = 0; Icount = 0; Scount = 0; Mcount = 0;

    
  }
  
  void drawCross(){
    fill(255);
    text("Bubble iterations: " + Bcount, 10, 15);
    text("Selection iterations: " + Scount, width/2+15, 15);
    text("Insertion iterations: " + Icount, 10, height/2+25);
    text("Merge iterations: " + Mcount, width/2+15, height/2+25);

    fill(150);
    noStroke();
    rect(width/2-5, 0, 10, height);
    rect(0, height/2-5, width, 10);
  }
  
  
  
  void showInsert(){//draw list on screen
   
    int w = (width/2)/size;
    int h = height/(2*size+1);
    for(int i = 0; i<size; ++i){
      fill(colI);
      rect(w*i, height, w, -(insertionList.get(i)*h));
    }
    
  }
  
  void showSelect(){//draw list on screen
   
    int w = (width/2)/size;
    int h = height/(2*size+1);
    for(int i = 0; i<size; ++i){
      fill(colS);
      rect(width/2+ 5+w*i, height/2 -5, w, -(selectionList.get(i)*h));
    }
    
  }
  
  void showBubble(){//draw list on screen
   
    int w = (width/2)/size;
    int h = height/(2*size+1);
    for(int i = 0; i<size; ++i){
      fill(colB);
      rect(i*w, height/2 -5, w, -(bubbleList.get(i)*h));
    }
    
  }
  
  void showMerge(){//draw list on screen
   
    int w = (width/2)/size;
    int h = height/(2*size+1);
    for(int i = 0; i<size; ++i){
      fill(colM);
      rect(width/2+ 5+w*i, height, w, -(mergeList.get(i)*h));
    }
    
  }
  
  void insertionSortI(int iter){//This is going to implement the insertion sort// Iter starts from 1!!!
    
    
      
      int x = insertionList.get(iter);
      
      int j = iter;
      
      while(j>0){
        
        if(insertionList.get(iter) >= insertionList.get(j-1))break;
        j--;
        Icount++;
      }
      
      for(int k = iter; k>j; k--)insertionList.set(k,insertionList.get(k-1));
      insertionList.set(j, x);
      
      if(sorted(insertionList))colI = color(0,255,0);
      
  }
  
  boolean sorted(IntList l){//checks if the list is sorted
    for(int i = 0; i<size-1; ++i)if(l.get(i) > l.get(i+1))return false;
    return true;
  }
  
  void selectionSortI(int i){//This is going to implement the insertion sort
        
        
        int iMin = i;
        for(int j = i+1; j< size; ++j){
         Scount++;
         if(selectionList.get(j) < selectionList.get(iMin))iMin = j; 
        }
        int t = selectionList.get(i);
        selectionList.set(i, selectionList.get(iMin));
        selectionList.set(iMin, t);
        
        if(sorted(selectionList))colS = color(0,255,0);

      
      
  }
  
  void swap(IntList bubbleList, int a, int b){
    
    int t = bubbleList.get(a);
    bubbleList.set(a, bubbleList.get(b));
    bubbleList.set(b, t);
    
  }
  
  void bubbleSort(int bubbleIteration){
    boolean sorted = true;
    for(int i = 0; i<size-bubbleIteration-1; ++i){
      Bcount++;
      if(bubbleList.get(i) > bubbleList.get(i+1)){
        sorted = false;
        swap(bubbleList,i,i+1);
        }
      
    }
    if(sorted(bubbleList))colB = color(0,255,0);
    
  }
  
}
