

void setup() {
  size(700, 700);
  background(255);
}
void draw() {
  line(0,0,0,-120);
  tegnGren(width/2, height , 150 ,0);
}


// l = længde, V = vinkel
void tegnGren(float x, float y, float l, float v) {
  PVector pv = new PVector(0,-l);
  pv.rotate(v);
  line(x, y, x+pv.x, y+pv.y);
  l *= 0.70;
  if(l >6){

  
  tegnGren(x+pv.x,y+pv.y,l,v+PI/8);
  tegnGren(x+pv.x,y+pv.y,l,v-PI/8);
  }
}
