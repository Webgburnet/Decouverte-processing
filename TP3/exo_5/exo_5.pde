PImage monImage; // La modification importante est ici !!!

void setup()
{
    size(displayWidth,displayHeight);
    background(255,255,255);
    monImage = loadImage("image.jpg");
    monImage.resize(monImage.width/2,monImage.height/2);
    int y=0;
    while( y < monImage.height )
    {
      int x=0;
      while( x < monImage.width )
      {
        color c = monImage.get(x,y);
        fill(c);
        stroke(c);
        //rect(x,y,1,1);
        ellipse(x,y,1,1);
        x = x + 10;
      }
      y = y + 10;
    }
}

void draw()
{
  
}
