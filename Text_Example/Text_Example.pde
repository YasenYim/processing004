PFont myFont;

void setup() {
  size(400, 300);

  myFont=createFont("PTMono.ttc", 72);
}

void draw() {
  textFont(myFont);
  textSize(36);
  textAlign(CENTER, TOP);
  fill(255, 255, 0);
  
  //上面四条设定了文字的样式，要在text()渲染文字前设定好。
  
  text("一朵Processing", 200, 150);
  float test=13.14;
  text(test,200,200);
}
