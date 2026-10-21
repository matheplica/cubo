class MtfArc extends Motif{
  int rand, large = 16;
  int[] vals = {1, 3, 4, 5};
  MtfArc(PVector a, PVector b, PVector c, PVector d, int p, int r){
    super(a, b, c, d, p, r);
    rand = vals[int(random(vals.length))]*large;
  }
  void display(){
    //ellipse(cs[0].x, cs[0].y, 81, 80);
    for(int i=large; i<ray*1.5; i+=rand) arc(cs[0].x, cs[0].y, i, i, HALF_PI+(PI3)*pos, HALF_PI+(PI3)*(pos+1));

  }
}
