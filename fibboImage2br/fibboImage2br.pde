/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/158305*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */
/////////////////////////// //<>//
//                       //
//   -~=Manoylov AC=~-   //
//                       //
///////////////////////////
//
// Controls:
// LEFT  mousePressed  -  redraw with another image
// RIGHT mousePressed  -  on/off some randomization
//
/////////////////////////////////////////////////

float px, py, r, degree;
float minWeight = 1;
float maxWeight = 4;
float currWeight;
float spacing = maxWeight+2;
float goldenRatio = ((sqrt(5) + 1 ) / 2);
int iter = 0, imgNum = (int)random(4);    //iter是全局上 点的编号
boolean smallChaos = false;
PImage img;

void setup() {
  img = loadImage("img" + imgNum + ".jpg");
  size(500, 500);
  background(#F2F7F4);
  px = width/2; py = height/2;
}

void draw() {
  if(frameCount > 120){      //运行120帧之后（2s之后）才开始绘图
    for(int i = 34; i > 0; --i){ // 每一帧画34个点，可以调整这里的数字来控制绘制速度
    
      degree = (iter * goldenRatio) * 360;  //根据全局编号 iter 计算角度，这里的角度的单位是 0~360°
      r = sqrt(iter++) * spacing;      //根据全局编号 iter 来计算点到屏幕中心的距离
      calcPointPos(width/2, height/2, r, (degree % 360));
      
      color pix = img.get((int)px, (int)py);
      currWeight = map(brightness(pix), 255, 0, minWeight, maxWeight);  //用图片颜色来计算点的大小
      strokeWeight(currWeight);
      stroke(#523939); // stroke(pix);
      point(px, py);
      
      if (px-10 <= 0 || px+10 >= width || py-10 <= 0 || py+10 >= height ) { noLoop(); }  //noLoop 停止 void draw 的循环
    }
  }
}

void calcPointPos(float x, float y, float r, float graden) {
  px = x + cos(radians(graden))*(r/2);
  py = y + sin(radians(graden))*(r/2);
    if(smallChaos){
    px = x + random(maxWeight)+ cos(radians(graden))*(r/2);  //radians 可以换算角度单位，从0~360°换算到0~TWO_PI
    
    py = y + random(maxWeight)+ sin(radians(graden))*(r/2);
  }
}

void mousePressed(){
	 if (mouseButton == RIGHT){
		smallChaos = !smallChaos;
	  }else if (mouseButton == LEFT){
		  imgNum++;
		  imgNum %= 4;
		  img = loadImage("img" + imgNum + ".jpg");
	  }
  frameCount = iter = 0;
  background(#F2F7F4);
  loop();  redraw();
}
