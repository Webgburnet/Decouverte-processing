void setup() {
fullScreen();
background(20, 20, 20);
colorMode(HSB,360,100,100,255);
}
void draw() {
float teinte=233;
float sat=random(0,100);
float lum=random(0,100);
float alpha = 55;
stroke(0, 0, 0);
fill(teinte, sat, lum,alpha);
float largeurRect=random(10, 100);
float hauteurRect=random(10, 100);
float xRect=random(0,width);
float yRect=random(0,height);
ellipse(xRect, yRect, hauteurRect, hauteurRect);
frameRate(4);
save("tp0_result.png");
}