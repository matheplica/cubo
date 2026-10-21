final float PI3 = TWO_PI/3.0;
class Motif {
  int pos, ray;
  PVector[] cs = new PVector[4];
  Motif(PVector a, PVector b, PVector c, PVector d, int p, int r) {
    cs[0] = a.copy();
    cs[1] = b.copy();
    cs[2] = c.copy();
    cs[3] = d.copy();
    this.pos = p;
    this.ray = r;
  }
  void display() {
  }
}
