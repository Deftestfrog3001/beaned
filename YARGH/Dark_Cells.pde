class DarkCell {
  float opacity;
  float x, y, size;

  DarkCell(float _x, float _y, float s) {
    size = s;
    x = _x;
    y = _y;
    opacity = 0;
  }

  void show() {
   square(x,y,size); 
  }

  void act() {
    
  }
}
