public class Paddle{
 
  public int posx, posy;
  
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
   
    if( (posy > 0 && posy <= height-85 ) || (posy <= 0 && i>0) || (posy > height-85 && i<0))posy += i;
        
    

  }
  
  
  void think(int y, int x, int speed, float dir){
    
    if(dir > 0 && x > width/2){
    
      if(y > posy+30)this.moveUp(speed);
      else if(y< posx)this.moveUp(-speed);
      
    }
  }
  
  
  
}
