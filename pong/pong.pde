Ball ball;
Paddle paddleR;
Paddle paddleL;
public int scoreR = 0;
public int scoreL = 0;

void setup(){
  
  ball = new Ball(width/2, height/2);
  paddleL = new Paddle(0, height/2-Paddle.h/2);
  paddleR = new Paddle(width-Paddle.w, height/2-Paddle.h/2);

  
  size(1200,700);
  
  background(0);
  
  
}


void draw(){
  
    background(0);
    drawNet();
  paddleR.drawPaddle();
  paddleL.drawPaddle();
  ball.drawBall();
  ball.moveBall();
  drawScore();
}

void keyPressed(){
  
  if(key == CODED){
   
    if(keyCode == UP)paddleL.moveUp(-15);
    else if(keyCode == DOWN)paddleL.moveUp(15);
    
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
