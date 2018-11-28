Ball ball;
Paddle paddleR;
Paddle paddleL;
int ball_speed = 4;
int speedL = 13;
int speedR = 13;
public int scoreR = 0;
public int scoreL = 0;

void setup(){
  
  ball = new Ball(width/2, height/2);
  paddleL = new Paddle(0, height/2-Paddle.h/2);
  paddleR = new Paddle(width-Paddle.w, height/2-Paddle.h/2);

  ball.set_vel(4);
  
  size(1200,700);
  
  background(0);
  
  
}

void mouseClicked(){
 ball.set_vel(ball_speed);
 scoreR = 0;
 scoreL = 0;
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if((ball_speed > 0 || e > 0 )  && (ball_speed < 15 || e <0) )ball_speed+= e;
  ball.set_vel(ball_speed);
}

void draw(){
  
  background(0);
  drawNet();
  paddleR.think(ball.posy, ball.posx, speedR-3, ball.velx);
  paddleR.drawPaddle();
  paddleL.drawPaddle();
  ball.drawBall();
  ball.moveBall(paddleR.posy, paddleL.posy);
  drawScore();
}

void keyPressed(){
  
  if(key == 'r' && speedR < 60)speedR++;
    
    
  if(key == 'e'&& speedR >= 0)speedR--;
  if(key == 'l' && speedL < 60)speedL++;
  if(key == 'k' && speedL > 0)speedL--;



  
   if(key == 'w')paddleR.moveUp(-speedR);
   else if(key == 's')paddleR.moveUp(speedR);
   if(key == CODED){
   
    if(keyCode == UP)paddleL.moveUp(-speedL);
    else if(keyCode == DOWN)paddleL.moveUp(speedL);
    

    
  }
  
}

void drawNet(){
  
  for(int i = 0; i<20; ++i){
    
    fill(35);
    stroke(35);
    
    rect(width/2-1, i*65, 2, 60);
  
  }
  
}

void drawScore(){
   textSize(30);
   text(scoreR + " : " + scoreL, width/2-32, 50); 
}
