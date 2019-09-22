void setup() {
//fullScreen();
size(600,300);
background(20, 20, 20);
frameRate(8);
}
void draw() {
float rouge=random(0,255);
float vert=random(0,255);
float bleu=random(0,255);
float alpha = 55;
stroke(0, 0, 0);
fill(rouge, vert, bleu,alpha);
float largeurRect=100;
float hauteurRect=random(10, 100);
float xRect=random(0,width);
float yRect=random(0,height);
rect(xRect, yRect, largeurRect, hauteurRect);
save("tp0_result.png");
}