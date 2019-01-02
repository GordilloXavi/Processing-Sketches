Picture pic;

void setup(){
  
  pic = new Picture("img.png");
  fullScreen();
  background(0);
  pic.show();
  
}

void draw(){
  
  pic.blur();
  pic.show();
  noLoop();
  
}
