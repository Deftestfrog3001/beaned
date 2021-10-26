class Player extends GameObject {

  float speed;
  int roomX, roomY;

  Player() {
    super();
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    hp = 1;
    speed = 5;
    roomX = 1;
    roomY = 1;
  }
  
  void show() {
    fill(black);
    noStroke();
    circle(loc.x, loc.y, 40);
  }

  void act() {
    
    //super.act();
    
    loc.add(vel);

    if (Wkey) vel.y = -speed;
    if (Akey) vel.x = -speed;
    if (Skey) vel.y = speed;
    if (Dkey) vel.x = speed;

    if (vel.mag() > speed) vel.setMag(speed);

    if (!Wkey && !Skey) vel.y = 0;
    if (!Akey && !Dkey) vel.x = 0;
  }
}
