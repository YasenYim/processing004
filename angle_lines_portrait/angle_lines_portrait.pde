
PImage img;

void setup() {
  size(550, 807);
  img=loadImage("20111025_016h.jpg");
}

void draw() {
  background(255);
  float offset=map(mouseX, 0, width, 0, TWO_PI);  //鼠标控制线条的初始旋转角度, 这个角度会应用到所有线条上
  
  int space=3;  //取点间距
  stroke(100, 100);
  
  for (int i=0; i<width; i+=space) {  //等距取点
    for (int j=0; j<height; j+=space) {
      float angle=map(brightness(img.get(i, j)), 0, 255, 0, TWO_PI);  //根据图片上该点的亮度来控制该处线条的旋转角度
      angle+=offset;  //再加上初始旋转角度
      line(i, j, i+cos(angle)*10, j+sin(angle)*10);//画一根长度为10的线段
    }
  }
}
