PImage watch;
float r=150;  //指针长度

int tx=473;  //圆心位置
int ty=398;

void setup(){
  watch=loadImage("watch.png");
  surface.setSize(watch.width/2,watch.height);  //根据图片尺寸设定窗口尺寸
}

void draw(){
  translate(-width/2,0);  //偏移一下图片的位置
  image(watch,0,0);
  translate(tx,ty);
  
  
  stroke(255);
  strokeCap(ROUND);  
  
  for(int i=0;i<60;i++){
    
    if(i%5==0){
      strokeWeight(4);
      float shortX=cos(TWO_PI/60*i)*(r-8);
      float shortY=sin(TWO_PI/60*i)*(r-8);
      float longX=cos(TWO_PI/60*i)*(r);
      float longY=sin(TWO_PI/60*i)*(r);
      
      line(shortX,shortY,longX,longY);
    }else{
      strokeWeight(2);
      float shortX=cos(TWO_PI/60*i)*(r-2);
      float shortY=sin(TWO_PI/60*i)*(r-2);
      float longX=cos(TWO_PI/60*i)*(r);
      float longY=sin(TWO_PI/60*i)*(r);
      
      line(shortX,shortY,longX,longY);
    }
  }
  
  float ha=map(hour()%12,0,12,0,TWO_PI)-PI/2;
  float ma=map(minute(),0,60,0,TWO_PI)-PI/2;
  float sa=map(second(),0,60,0,TWO_PI)-PI/2;
  
  ha=ha+ma/12;
  ma=ma+sa/60;
  
  float hx=cos(ha)*80;
  float hy=sin(ha)*80;
  
  float mx=cos(ma)*130;
  float my=sin(ma)*130;
  
  float sx=cos(sa)*130;
  float sy=sin(sa)*130;
  float sxm=cos(sa)*80;
  float sym=sin(sa)*80;
  
  strokeCap(PROJECT);
  stroke(255);
  strokeWeight(6);
  line(0,0,hx,hy);
  line(0,0,mx,my);
  
  stroke(0);
  line(0,0,sx,sy);
  stroke(216,201,83);
  strokeWeight(2);
  line(sxm,sym,sx,sy);
  
  fill(50);
  noStroke();
  ellipse(0,0,20,20);
  fill(#9B6132);
  ellipse(0,0,6,6);
      
  //println(mouseX,mouseY);
}
