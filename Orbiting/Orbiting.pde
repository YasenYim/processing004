

float theta;

void setup(){
  size(800,600);


}

void draw(){
  background(0);
  
  theta+=0.04;  //角速度是 0.04
  
  float xpos=width/2+cos(theta)*240;
  float ypos=height/2+sin(theta)*240;
  
  fill(255);
  //ellipse(xpos,ypos,40,40);
  
  surface.setLocation(int(xpos),int(ypos));

}
