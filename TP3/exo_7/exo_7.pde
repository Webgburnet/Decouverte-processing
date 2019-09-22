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
        int gris = int(brightness(c));
        if(gris>=0 && gris<77)
        {
          fill(0,0,0);
          stroke(0,0,0);
          ellipse(xDessin, yDessin,1,1);
        }
        else if (gris>=77 && gris<200)
        {
          ellipse(xDessin, yDessin,1,1);
          fill(101,49,124);
          stroke(101,49,124);
        }
        else if (gris>=200 && gris<=255)
        {
          ellipse(xDessin, yDessin,1,1);
          fill(224,71,0);
          stroke(224,71,0);
        }

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
