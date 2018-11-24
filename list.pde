
public class List extends IntList{
  
   int size;
   int r = (int)random(255),g = (int)random(255),b = (int)random(255);
   int pick = (int)random(1,3);
   
   
  public List(int size){
    
    this.size = size;
    
  }
  
  void changeColors(){
     r = (int)random(255);
     g = (int)random(255);
     b = (int)random(255);
     pick = (int)random(1,7);
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
   
    println(pick);
    
    for(int i = 0; i<size; ++i){
      
      if(pick == 1){
       g = (int)map(i,0,size,0,255);
        r = 20; 
        b = 255;
      }else if(pick == 2){
         r = (int)map(i,0,size,0,255);
        g = 20; 
        b = 255;
        
      }else if(pick == 3){
         b = (int)map(i,0,size,0,255);
        g = 20; 
        r = 255;
      }else if(pick == 4){
         g = (int)map(i,0,size,0,255);
        b = 20; 
        r = 255;
      }else if(pick == 5){
         r = (int)map(i,0,size,0,255);
        b = 20; 
        g = 255;
      }else if(pick == 6){
         b = (int)map(i,0,size,0,255);
        r = 20; 
        g = 255;
      }
        

      
       fill(r,g,b);
      rect(i*width/size,height, width/size, -this.get(i)*2);
      
    }
    
  }
  
 
  
}
