class MtfLine extends Motif {
  MtfLine(PVector a, PVector b, PVector c, PVector d, int p, int r) {
    super(a, b, c, d, p, r);
  }
  void display() {
    line(cs[1].x, cs[1].y, cs[2].x, cs[2].y);
    //line(cs[0].x, cs[0].y, cs[3].x, cs[3].y);
  }
}
