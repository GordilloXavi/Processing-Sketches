
//TODO: make wind on click

class flake{
  int x,y, size, ID;
  float velocity, angle = 0.01;
  float velx = 0, accx = size*0.00005;
  PImage img;
  String[] paths = {"snowflake1.png", "snowflake2.png", "snowflake3.png", "snowball.jpg"};

  public flake(int size, int x){
    
    ID = int(random(0,4));
    this.x = (int)random(100,width+400);
    y = -size - int(random(size*2, height*2));
    this.size = size;
    velocity = size/2;
    if(size > 4)img = loadImage(paths[ID]);
    velx = 0; accx = size*0.01/2;


  } 
  
  void reset(){
    this.x = (int)random(100,width+400);
    y = -size - int(random(size, height));
    velx = 0; accx = size*0.01/2;
  }

  void move(){
    y+=velocity;
    velx+=accx;
    x-=velx/3;
    //angle+=.001;
    if(y > height+size/2){
      reset();
    } 
  } 

  void show(){
    if(size <= 4){
      fill(255);
      stroke(255);
      ellipse(x,y,size,size);
    }
    else image(img, x,y,size*2, size*2);

  } 

} 
