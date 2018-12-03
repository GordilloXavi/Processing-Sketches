class List{
  
  IntList list;
  int size;
  
  public List(int size){
    
    this.size = size;
    
    list = makeList(size);
    
  }
  
  
  IntList makeList(int size){
    
    //size += width%size;//remove?
    
    IntList l = new IntList(size);
    
    for(int i = 1; i<=size; ++i){
      
      l.set(i-1, i);
      
    }
    
    l.shuffle();
    
    return l;
  
    
  }
  
  void scramble(){
   
    list.shuffle();
    
  }
  
  void display(){
    
    for(int i = 0; i<size; ++i){
      print(list.get(i) + " ");
    }
    println();    
  }
  
  void show(color col){//draw list on screen
   
    int w = width/size;
    int h = height/(size+1);
    for(int i = 0; i<size; ++i){
      fill(col);
      rect(w*i, height, w, -(list.get(i)*h));
    }
    
  }
  
  
  void selectionSort(){//This is going to implement the insertion sort
    
      for(int i = 0; i<size-1; ++i){
        
        int iMin = i;
        for(int j = i+1; j< size; ++j){
         if(list.get(j) < list.get(iMin))iMin = j; 
        }
        int t = list.get(i);
        list.set(i, list.get(iMin));
        list.set(iMin, t);
      }
    
    
  }
  
  void selectionSortI(int i){//This is going to implement the insertion sort
    
        int iMin = i;
        for(int j = i+1; j< size; ++j){
         if(list.get(j) < list.get(iMin))iMin = j; 
        }
        int t = list.get(i);
        list.set(i, list.get(iMin));
        list.set(iMin, t);
      
      
  }
  
}
