int nbCotes = 6;
float theta;
float R;

void setup(){
  size(displayWidth,displayHeight);
  background(20,20,20);
  theta=0;
  R=50;

  
}
void draw(){
    for(int i=0;i<nbCotes;i++)
  {
    float x0=(displayWidth/2) + cos(theta)*R;
    float y0=(displayHeight/2) + sin(theta)*R;
    theta = theta + 60*(2*PI/360);
    float x1=(displayWidth/2) + cos(theta)*R;
    float y1=(displayHeight/2) + sin(theta)*R;
    stroke(255, 255, 255);
    line(x0, y0, x1, y1);
  }
  R=0;
}
