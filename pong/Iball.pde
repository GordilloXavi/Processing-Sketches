public class Ball{
  
  private int posx, posy;
  private float velx;
  private float vely;

  public static final int r = 30;
  
  public Ball(int posx, int posy){
    
    this.posx = posx;
    this.posy = posy;
    
  }
  
  void set_vel(int vel){
    posx = width/2;
    posy = height/2;
    velx = vel;
    vely = vel;
  }
  
  void drawBall(){
    
    fill(255);
    stroke(255);
    ellipse(posx, posy, r,r);
    
  }
  

  
  void moveBall(int yR, int yL){
  
    posx += velx;
    posy += vely;
    
    if(posx-r/2 <= 15 && posy >= yL-4 && posy <= yL+90 || posx+r/2 >= width-15 && posy >= yR-4 && posy <= yR+90){
      
         velx = -1*velx;
         
    }
    
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
