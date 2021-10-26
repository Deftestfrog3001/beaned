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
    if (loc.x < 50) loc.x = 50;
    if (loc.x > width -50) loc.x = width -50;
    if (loc.y < 50) loc.y = 50;
    if (loc.y > height -50) loc.y = height -50;
  }
}
