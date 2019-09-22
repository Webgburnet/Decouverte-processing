void setup() {
//fullScreen();
size(600,300);
background(20,20,20);
stroke(0,0,0);
float rouge=random(0,255);
float vert=random(0,255);
float bleu=random(0,255);
fill(rouge,vert,bleu);
float largeurRect=random(10,100);
float hauteurRect=largeurRect;
float xRect=width/2-largeurRect/2;
float yRect=height/2-hauteurRect/2;
rect(xRect,yRect,largeurRect,hauteurRect);//hauteurRect);
save("tp0_result.png");
}