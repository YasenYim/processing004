int n=0;  //编号
float c=8;    //间距系数
float hue_value=0;  //色相值

void setup() {
  size(800, 800);
  background(0);
  colorMode(HSB);
}

void draw() {

  noStroke();

  if (n<2000) {  //屏幕上最多不超过2000个点
    float a=n*radians(137.5);  //角度
    float r=c*sqrt(n);    //到屏幕中心的距离
    float xx=r*cos(a)+width/2;
    float yy=r*sin(a)+height/2;
    hue_value+=0.1;  //色相值也微微增大


    fill(n * 0.1, 150, 240);
    ellipse(xx, yy, 10, 10);
    n++;
  }
}

//这里每帧只画一个点，所以 void draw 里不需要for循环
//点是随着时间越堆积越多
