public class Ball{
  
  private int posx, posy;
  private int velx = 4;
  private int vely = 4;
  public static final int r = 30;
  
  public Ball(int posx, int posy){
    
    this.posx = posx;
    this.posy = posy;
    
  }
  
  void drawBall(){
    
    fill(255);
    stroke(255);
    ellipse(posx, posy, r,r);
    
  }
  
  void moveBall(){
  
    posx += velx;
    posy += vely;
    
    if(posx <= r/2){
      velx = -1*velx;
      scoreL++;
      posx = width/2;
      posy = height/2;
    }
    else if(posx >= width-r/2){
       velx = -1*velx;
        scoreR++;
        posx = width/2;
        posy = height/2;
    }
    
    if(posy <= r/2 || posy >= height-r/2)vely = -1*vely;
    
  
  }
  
}
