
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
  
  void sort(int i){
    
      if(this.get(i) > this.get(i+1)){
        
        swap(i,i+1);
        }
    
  }
  
  void show(int x){
       
    for(int i = 0; i<size; ++i){
      
       fill(255,0,255);
       
       if(i-1 == x)fill(0,255,0);
       
       int h = (int)map(this.get(i), 0, size, 0, height);
       
      rect(i*width/size,height, width/size, -h);
            
    }
    
  }
   
 
  
}
