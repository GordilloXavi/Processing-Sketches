
public class Pic{
  
  private PImage picture;
  private int w, h;
  char[][] ascii;
  char[] charset = {' ', '\'', '^', '\"', ',', ':', ';', 'I', 'l' , '!' , 'i' , '<' , '>' , '+' , '_' , '-' , '?' , '[' , ']' , '{' , '}' , '1' , '(' , ')' , '|' ,
'\\' , '/' , 't' , 'f' , 'j' , 'r' , 'x' , 'n' , 'u' , 'v' , 'c' , 'z' , 'X' , 'Y' , 'U' , 'J' , 'C' , 'L' , 'Q' , 'O' , '0' , 'Z' , 'm' , 'w' , 'q' , 'p' , 'd' , 'b' 
, 'k' , 'h' , 'a' , 'o' , '*' , '#' , 'M' , 'W' , '&' , '8' , '%' , 'B' , '@'};
  //char[] charset = {' ', '.', ':', '*', '+', '(', '1', 'u', 'j', 'h', 'k', 'U', 'N', 'B', '#', 'M', '@'};
  int num_chars = charset.length;
  int charWidth, charHeight;
  
  public Pic(String path){
    picture = loadImage(path);
    w = picture.width;
    h = picture.height;
    ascii = new char[h][w];
    charWidth = width/w;
    charHeight = height/h;
    println("width: " + w + ", height: " + h);
  }
  
  void makeArray(){
    color c;
    picture.loadPixels();
    
    for(int i = 0; i<h; ++i){
      for(int j = 0; j<w; ++j){
        c = picture.pixels[i*w + j];
        int b = int(brightness(c));
        //print(b + " ");
        ascii[i][j] = charset[int (map(b, 0, 255, num_chars-1, 0))];
        //print(ascii[i][j]);
      }//println();
    }
      
  }
  
  void show(){
    
    for(int i = 0; i<h; ++i){
      for(int j = 0; j<w; ++j){
        textSize(charWidth+1);
        fill(0);
        text(ascii[i][j], j*charWidth, i*charHeight);
      }
    
    }
  
  }
}
