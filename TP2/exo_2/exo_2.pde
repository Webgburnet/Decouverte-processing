int nbCotes = 6;
float theta;
float R;

void setup(){
  size(displayWidth,displayHeight);
  background(20,20,20);
  theta=0;
  R=50;
  frameRate(10);
  
}
void draw(){
  float maxR=sqrt(displayWidth*displayWidth + displayHeight*displayHeight)/2;
  float epaisseur=random(2,6);
  strokeWeight(epaisseur);
  
  for(int i=0;i<nbCotes;i++)
  {
    float x0=(displayWidth/2) + cos(theta)*R;
    float y0=(displayHeight/2) + sin(theta)*R;
    theta = theta + 60*(2*PI/360);//random((theta + (2*PI/360)),(theta + 50*(2*PI/360)));
    float x1=(displayWidth/2) + cos(theta)*R;
    float y1=(displayHeight/2) + sin(theta)*R;
    stroke(255, 255, 255, 50);
    line(x0, y0, x1, y1);
  }
  if(R<maxR)
  {
    R=R+random(10,30);
  }
  else
  {
    R=random(5,50);
  }
}
