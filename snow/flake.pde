
//TODO: make wind on click

class flake{
  
  int x,y, size, velocity;
  PImage img;

  public flake(int size, int x){

    this.x = (int)random(0,width);
    y = -size;
    this.size = size;
    velocity = size/2;

  } 

  void move(){
    y+=velocity;
    if(y > height+size/2){
      
      y = -size;
    } 
  } 

  void show(){

    fill(255);
    stroke(255);
    ellipse(x,y,size,size);

  } 

} 
