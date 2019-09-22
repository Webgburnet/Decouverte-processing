int nbCotes = 6;
float theta;
float R;
int couleur ;

void setup(){
  size(500,500);
  background(20,20,20);
  theta=0;
  R=50;
  frameRate(10);
  couleur=0;
  
}
void draw(){
  float maxR=sqrt(width*width + height*height)/2;
  float epaisseur=random(2,6);
  strokeWeight(epaisseur);
  
  for(int i=0;i<nbCotes;i++)
  {
    float x0=(width/2) + cos(theta)*R;
    float y0=(height/2) + sin(theta)*R;
    theta = theta + 60*(2*PI/360);//random((theta + (2*PI/360)),(theta + 50*(2*PI/360)));
    float x1=(width/2) + cos(theta)*R;
    float y1=(height/2) + sin(theta)*R;
    if (couleur==0)
    {
      stroke(255, 255, 255, 50);
    }
    else if (couleur==1)
    {
      stroke(20,20,20);
    }
    else if (couleur==2)
    {
      stroke(193, 158, 18,50);
    }
    line(x0, y0, x1, y1);
  }
  if(R<maxR)
  {
    R=R+random(10,30);
    couleur=(int)R%2;
  }
  else
  {
    R=random(5,50);
    couleur=2;
  }
}
