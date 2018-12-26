
class timer{
  int ct, pt;
  boolean started = false;
  boolean pom = true;//false = 25, true = 5
  int startT, currentTime;
  String min = "00", sec = "00";
  color c = color(0,255,0);
  public timer(){


  } 

  void update(){
    pt = ct; 
    ct = second();
    if(pt != ct)currentTime++;
    if(min.equals("00"))c = color(0,255,0);
    if(started){
      sec = seconds(startT);
      min = minutes(startT);
    }
    if(min.equals("25") && pom){//time of work
      println("BEGINNING OF REST!");
      stop();
      c = color(255,0,0);
      pom = !pom;

    }else if(min.equals("05") && !pom){//time of rest
      println("END OF REST!");
      stop();
      c = color(255,0,0);
      pom = !pom;

    }
  } 
   
  void show(){
    textSize(50);
    fill(c);
    text(min + ":" + sec, width/2-65, height/2-7);
  } 
  
  void start(){
    color c = color(0,255,0);
    started = true;
    pt = second();
    ct = second();
    startT = currentTime =  second();
  } 

  void stop(){
    color c = color(0,255,0);

    started = false;
  } 

  String minutes(int s){
    int sec = currentTime -s;
    int m = sec/60;
    if(m < 10)return "0"+m;
    return ""+m;
  } 

  String seconds(int s){
    int sec = currentTime-s;
    sec = sec%60;
    if(sec < 10)return "0"+sec;
    return "" + sec;
  } 

} 
