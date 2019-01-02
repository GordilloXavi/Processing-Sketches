Picture pic;
int i = 0;

void setup(){
  
  pic = new Picture("image.png");
  size(pic.image.width, pic.image.height);
background(255);
  pic.show();
  
  
}

void draw(){
  
  if(i < pic.blurry.height*pic.blurry.width)pic.blur(i);
  pic.show();
  i++;  
}
