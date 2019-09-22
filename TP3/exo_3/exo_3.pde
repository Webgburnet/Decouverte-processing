PImage monImage; // La modification importante est ici !!!
int rouge;
int vert;
int bleu;

void setup()
{
    size(displayWidth,displayHeight);
    background(255,255,255);
    monImage = loadImage("image.jpg");
    monImage.resize(monImage.width/2,monImage.height/2);
    for(int i=0; i<monImage.width;i++)
    {
        color c = monImage.get(i,0);
        rouge = (int)red(c);
        vert = (int)green(c);
        bleu = (int)blue(c);
        stroke(rouge, vert, bleu);
        fill(rouge, vert, bleu);
        rect(i,0,0,monImage.height);
      }
}

void draw()
{
}
  void keyPressed() {
    save("resultat.png");
  }
