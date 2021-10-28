class GameObject {
  int hp;
  PVector loc;
  PVector vel;
  int size; 

  GameObject() {
  }

  void show () {
  }

  void act () {
    //move
    loc.add(vel);
    
    //Wall collision
    if (loc.x < width*0.1) loc.x = width*0.1;
    if (loc.x > width*0.9) loc.x = width*0.9;
    if (loc.y < height*0.1) loc.y = height*0.1;
    if (loc.y > height*0.9) loc.y = height*0.9;
  }
}
