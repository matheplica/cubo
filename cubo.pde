ArrayList<Cube> cubs = new ArrayList<Cube>();
import processing.svg.*;
boolean record;
void setup() {
  size(780, 620, P2D);
  createCubes();
}
void draw() {
  background(220);
  if (record) beginRecord(SVG, "output.svg");
  noFill();
  stroke(0);
  strokeWeight(1);
  for (Cube c : cubs) c.display();
  if (record) {
    endRecord();
    record = false;
  }
}
void createCubes() {
  cubs.clear();
  for (int i=0; i<5; i++) {
    for (int j=5-i; j>0; j--) cubs.add(new Cube(j*124+62*i, 90+i*100, 60));
  }
}
void keyPressed() {
  if (key == 'r') {
    record = true;
    println("svg created");
  }else if(key=='c') createCubes();
}
