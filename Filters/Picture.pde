class Picture{
 
  private PImage image;
  private PImage blurry;
  color[] pix;
  private color[][] pic;
  int w, h;
  
  public Picture(String s){
    image = loadImage(s);
    blurry = image;
    w = image.width;
    h = image.height;
    blurry.loadPixels();
    pix = blurry.pixels;
    makeMatrix();
  }
  
  void show(){
    blurry.updatePixels();
    image(image, 0,0);
  }
  
  color[][] toMatrix(int w, int h){
    
    int s = pix.length;
    color[][] mat = new color[h][w];
    for(int i =0; i<s; ++i){
      mat[i/w][i%w] = pix[i];
    }

    return mat;
  }

  void makeMatrix(){
    pic = toMatrix(blurry.width, blurry.height);
  }
  
  void blur(){
    
    
    int x,y;
    int sz = pix.length;
    int w = blurry.width;
    
    for(int i = 0; i<sz; ++i){
      x = i%w;
      y = i/w;
      pix[i] = avgPix(x,y, i);
    }
  }
  
  void blur(int i){
    
    int x,y;
    int w = blurry.width;
    
      x = i%w;
      y = i/w;
      pix[i] = avgPix(x,y, i);
    
  }
  
  color avgPix(int j, int i, int x){
    
    int r = 0, g = 0, b = 0;
    
    boolean upper = i == 0;
    boolean lower = i == blurry.height-1;
    boolean right = j == blurry.width-1;
    boolean left = j == 0;
    int pixCount = 1;//will be nine
    
    r+=red(pic[i][j]);
    g+=green(pic[i][j]);
    b+=blue(pic[i][j]);
    
    if(!upper){
      pixCount++;
      r+=red(pic[i-1][j]);
      g+=green(pic[i-1][j]);
      b+=blue(pic[i-1][j]);
    }
    if(!upper && !left){
      pixCount++;
      r+=red(pic[i-1][j-1]);
      g+=green(pic[i-1][j-1]);
      b+=blue(pic[i-1][j-1]);
    }if(!left){
      pixCount++;
      r+=red(pic[i][j-1]);
      g+=green(pic[i][j-1]);
      b+=blue(pic[i][j-1]);
    }if(!lower){
      pixCount++;
      r+=red(pic[i+1][j]);
      g+=green(pic[i+1][j]);
      b+=blue(pic[i+1][j]);
    }if(!lower && !left){
      pixCount++;
      r+=red(pic[i+1][j-1]);
      g+=green(pic[i+1][j-1]);
      b+=blue(pic[i+1][j-1]);
    }if(!lower && !right){
      pixCount++;
      r+=red(pic[i+1][j+1]);
      g+=green(pic[i+1][j+1]);
      b+=blue(pic[i+1][j+1]);
    }if(!right){
      pixCount++;
      r+=red(pic[i][j+1]);
      g+=green(pic[i][j+1]);
      b+=blue(pic[i][j+1]);
    }if(!upper && !right){
      pixCount++;
      r+=red(pic[i-1][j+1]);
      g+=green(pic[i-1][j+1]);
      b+=blue(pic[i-1][j+1]);
    }

     r /= pixCount;
     g /= pixCount;
     b /= pixCount;
     
     r %= 256;
     g %= 256;
     b %= 256;
     
     float p = x*100.0/(image.height*image.width);
     println(p+"%");

     color c = color(r,g,b);
     return c;
  }
  
  
}
