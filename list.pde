
public class List extends IntList{
  
   int size;
   
  public List(int size){
    
    this.size = size;
    
  }
  
  void swap(int a, int b){
    
    int x = this.get(a);
    
    this.set(a,this.get(b));
    
    this.set(b, x);
    
  }
  
  void sort(){
    
    for(int i = 0; i<size-1; ++i){
      
      if(this.get(i) > this.get(i+1)){
        
        swap(i,i+1);
        }
      
    }
    
    
  }
  
  void show(){
   
    for(int i = 0; i<size; ++i){
      
       fill(i*255/size);
      //fill(255);
      rect(i*width/size,height, width/size, -this.get(i)*2);
      
    }
    
  }
  
 
  
}
