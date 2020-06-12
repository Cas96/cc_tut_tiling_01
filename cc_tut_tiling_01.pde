import processing.pdf.*;

int size = 20;

void setup() {
  size(1000, 1000);
  
  generatePattern();
}

void mouseReleased() {
  generatePattern();
  saveFrame("data/line-######.png");
}

void draw() {
  
}

void generatePattern() {
  background(0);
  size = floor(random(15, 100));
  for(int x = 0; x < width; x+=size) {
    for(int y = 0; y < height; y+=size) {
      pushMatrix();
  
      translate(x+size/2, y+size/2);
      noFill();
      stroke(255, 50);
      rect(-size/2, -size/2, size, size);
      if(random(1) < 0.5) {
        rotate(PI/4);
      }
      else {
        rotate(-PI/4);
      }
      stroke(255);
      line(-size/2, 0, size/2, 0);
      popMatrix();
    }
  }
}
