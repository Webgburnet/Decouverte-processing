PImage monImage; // La modification importante est ici !!!
void setup()
{
    size(displayWidth,displayHeight);
    background(255,255,255);
    monImage = loadImage("image.jpg");
    monImage.resize(monImage.width/2,monImage.height/2);
    copy(monImage,0,0,monImage.width,monImage.height,0,0,monImage.width,monImage.height);
    color c = monImage.get(0,0);
    int rouge = (int)red(c);
    int vert = (int)green(c);
    int bleu = (int)blue(c);
    println("La valeur en 0,0 r "+rouge+"v"+vert+"b"+bleu);
}

void draw()
{
  
}
