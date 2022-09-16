void setup() {
  size(1500, 1500);
  frameRate(5);
}

void draw() {
  background(212, 165, 114);
  boolean shift= true;
  for ( int y = 25; y < 1500; y = y+=60)
  {
    for (int x = 25; x < 1500; x+= 125)
    {
      if (shift == true)
        scale(x+15, y);
      else
        scale(x,y);
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
}

void scale(int x, int y) {
  beginShape();
  fill(105, 74, 41);
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(130+x, y-20);
  curveVertex(80+x, y+10);
  curveVertex(x+100, y+47);
  curveVertex(x+100, y+47);
  endShape();
}
