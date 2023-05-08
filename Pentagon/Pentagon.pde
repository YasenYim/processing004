
size(400, 400);

int num=20;  //十角星有20个顶点

beginShape();

for (int i=0; i<num; i++) {
  float rad;
  if (i%2==0) {  //顶点依次是内顶点和外顶点
    rad=100;
  } else {
    rad=200;
  }

  float xpos=200+cos(i*TWO_PI/num)*rad;
  float ypos=200+sin(i*TWO_PI/num)*rad;
  vertex(xpos, ypos);
}

endShape(CLOSE);  //没有CLOSE的话不会自动封口
