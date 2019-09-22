PImage monImage;

  void setup() {
    size(displayWidth, displayHeight);
    background(255);
    monImage = loadImage("image.jpg");
    
    monImage.resize(monImage.width/2, monImage.height/2);

    int yDessin = 0;
    int y = 0;
    while ( y < monImage.height ) {
      int x = 0;
      int xDessin = 0;
      while ( x < monImage.width ) {       
        color c = monImage.get(x,y);
        fill(red(c),green(c),blue(c));
        stroke(red(c),green(c),blue(c));
        int r = int(random(1,7));
        ellipse(xDessin, yDessin,r,r);
        xDessin = xDessin + 1;
        x = x + 1;
      }
      yDessin = yDessin + 1;
      y = y + 1;
    }
  }

  void draw() {
  }

  void keyPressed() {
    save("resultat.png");
  }
