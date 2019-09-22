float y0;
float y1;
float x;
void setup() {
  fullScreen();
  background(20, 20, 20);
  colorMode(HSB,360,100,100,255);
  y0=0;
  y1=height;
  x=0;
}

void draw (){
  float teinte=random(0,360);
  float sat=random(0,100);
  float lum=random(0,100);
  //float alpha = 55;
  stroke(teinte, sat, lum);
  line(x, y0, x, y1);
  x=(x+1)%width;
  
}