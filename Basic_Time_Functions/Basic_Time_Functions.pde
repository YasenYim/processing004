//通过 hour(), min(), second() 这三个函数可以获取当前时间

void setup(){
  size(400,400);
}

void draw(){
  background(0);
  
  int hr=hour();
  int min=minute();
  int sec=second();
  
  fill(255);
  textSize(48);
  textAlign(CENTER,CENTER);  
  text(hr,width/2,height*0.25);
  text(min,width/2,height*0.5);
  text(sec,width/2,height*0.75);
}
