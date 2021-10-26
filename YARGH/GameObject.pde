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
    if (loc.x < 85) loc.x = 85;
    if (loc.x > width -85) loc.x = width -85;
    if (loc.y < 65) loc.y = 65;
    if (loc.y > height -65) loc.y = height -65;
  }
}
