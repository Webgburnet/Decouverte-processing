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
    for(int i=0; i<monImage.height;i++)
    {
        color c = monImage.get(0,i);
        rouge = (int)red(c);
        vert = (int)green(c);
        bleu = (int)blue(c);
        stroke(rouge, vert, bleu);
        fill(rouge, vert, bleu);
        rect(0,i,monImage.width,1);
      }
}

void draw()
{

}
  void keyPressed() {
    save("resultat.png");
  }
