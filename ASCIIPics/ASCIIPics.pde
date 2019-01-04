Pic picture;
void setup(){
  picture = new Pic("mona.png");
  size(1280,1280); //The width and height of the image is output to the console. Multiply those numbers by 10 and make them the dimensions of the window
  // This way, the letters will have 10 pixels each (a decent resolution).
  background(255);
  picture.makeArray();
  picture.show();
  
  saveFrame("asciiImage.tif");
} 

void draw(){


} 
