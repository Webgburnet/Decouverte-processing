PImage monImage; // La modification importante est ici !!!
void setup()
{
    size(displayWidth,displayHeight);
    background(255,255,255);
    monImage = loadImage("image.jpg");
    copy(monImage,0,0,monImage.width,monImage.height,50,10,monImage.width,monImage.height);
}

void draw()
{
  
}
