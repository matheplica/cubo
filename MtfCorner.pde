class MtfCorner extends Motif {
  PVector[] step1 = new PVector[3];
  PVector[] step2 = new PVector[3];
  PVector[] center = new PVector[3];
  boolean sens;
  MtfCorner(PVector a, PVector b, PVector c, PVector d, int p, int r) {
    super(a, b, c, d, p, r);
    for (int i=0; i<3; i++) {
      step1[i] = new PVector(PVector.lerp(cs[0], cs[1], 0.25+i*0.25).x, PVector.lerp(cs[0], cs[1], 0.25+i*0.25).y);
      step2[i] = new PVector(PVector.lerp(cs[0], cs[2], 0.25+i*0.25).x, PVector.lerp(cs[0], cs[2], 0.25+i*0.25).y);
      center[i] = new PVector(PVector.lerp(cs[0], cs[3], 0.25+i*0.25).x, PVector.lerp(cs[0], cs[3], 0.25+i*0.25).y);
    }
    sens = boolean(int(random(2)));
  }
  void display() {
    for (int i=0; i<3; i++) {
      if (sens) line(step1[i].x, step1[i].y, center[i].x, center[i].y);
      else line(step2[i].x, step2[i].y, center[i].x, center[i].y);
    }
  }
}
