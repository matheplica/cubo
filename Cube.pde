class Cube {
  int x, y, r;
  PVector ray, center;
  PVector[] pts = new PVector[6];
  ArrayList<Motif> motifs = new ArrayList<Motif>();
  Cube(int x, int y, int r) {
    this.x = x;
    this.y = y;
    this.r = r;
    ray = new PVector(0, r);
    center = new PVector(0, 0);
    for (int i=0; i<pts.length; i++) pts[i] = center.copy().add(ray).rotate((PI/3.0)*i);
    for (int i=0; i<3; i++) {
      int rand = int(random(4));
      switch(rand) {
      case 0:
        //motifs.add(new MtfCroix(center, pts[i*2], pts[(2+i*2)%6], pts[(1+i*2)%6], i, r));
        break;
      case 1:
        motifs.add(new MtfLine(center, pts[i*2], pts[(2+i*2)%6], pts[(1+i*2)%6], i, r));
        break;
      case 2:
        motifs.add(new MtfArc(center, pts[i*2], pts[(2+i*2)%6], pts[(1+i*2)%6], i, r));
        break;
      case 3:
        motifs.add(new MtfCorner(center, pts[i*2], pts[(2+i*2)%6], pts[(1+i*2)%6], i, r));
        break;
      }
    }
  }
  void display() {
    strokeJoin(MITER);
    strokeCap(ROUND);
    pushMatrix();
    translate(x, y);
    beginShape();
    for (int i=0; i<pts.length; i++) vertex(pts[i].x, pts[i].y);
    endShape(CLOSE);
    for (int i=0; i<3; i++) line(center.x, center.y, pts[i*2].x, pts[i*2].y);
    for (int i=0; i<motifs.size(); i++) motifs.get(i).display();
    popMatrix();
  }
}
