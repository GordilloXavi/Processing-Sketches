public class Paddle{
 
  private int posx, posy;
  
  public static final int w = 15, h = 85;
  
  public Paddle(int x, int y){
    
    posx = x;
    posy = y;
      
  }
  
  void drawPaddle(){
     fill(255);
     rect(posx, posy, w, h);
    
  }
  
  void moveUp(int i){
   
    posy += i;
    
  }
  
  void moveDown(int i){
   
    posx += i;
    
  }
  
}
