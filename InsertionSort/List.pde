
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
  
  
  void insertionSort(){//This is going to implement the insertion sort
    
    for(int i = 1; i<size; ++i){
      
      int x = list.get(i);
      
      int j = i;
      
      while(j>0 && list.get(j-1) > x){
        
        list.set(j,list.get(j-1));
        j--;
        
      }
  
      list.set(j, x);
    }
    
    
  }
  
  void insertionSortI(int iter){//This is going to implement the insertion sort
    
    
      int x = list.get(iter);
      
      int j = iter;
      
      while(j>0 && list.get(j-1) > x){
        
        list.set(j,list.get(j-1));
        j--;
        
      }
  
      list.set(j, x);
      
      
    
    
    
  }
  
}
