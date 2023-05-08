//地球做圆周运动，月亮绕着地球转，屏幕上轨迹是月亮的轨迹

float earth_r=200;  //地球轨道半径
float earth_angle=0;

float moon_angle=0;

void setup() {
  size(600, 600);
  
  strokeWeight(3);
}

void draw() {

  earth_angle+=0.01;

  //300，300 是地球轨道圆心位置，也就是太阳的位置
  //earth_x earth_y 是地球位置，同时也是月亮轨道的圆心
  float earth_x=300+cos(earth_angle)*earth_r;
  float earth_y=300+sin(earth_angle)*earth_r;
  //屏幕上并没有画出来地球和太阳，但要持续更新它们的数据

  moon_angle+=0.06;

  //x,y 是月亮位置。
  float x=earth_x+cos(moon_angle)*80;
  float y=earth_y+sin(moon_angle)*80;

  point(x, y);
}
