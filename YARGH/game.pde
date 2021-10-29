void game() {
  drawroom();
  drawGameObjects();  
  drawLightLayer();
  drawMiniMap();

  println(p1.loc);
  println(p1.vel);
  println(p1.roomX, p1.roomY);
}

void drawroom() {
  //level
  background(white);
  fill(black);
  stroke(5);

  //walls
  line(0, 0, width, height);
  line(width, 0, 0, height);

  //exits
  //map detect
  northRoom = map.get(p1.roomX, p1.roomY-1);
  eastRoom  = map.get(p1.roomX+1, p1.roomY);
  southRoom = map.get(p1.roomX, p1.roomY+1);
  westRoom  = map.get(p1.roomX-1, p1.roomY);

  //draw exits
  noStroke();
  fill(black);
  if (northRoom != #ffffff) {
    ellipse(width/2, height*0.1, 100, 100);
  }
   if (eastRoom != #ffffff) {
    ellipse(width*0.9, height/2, 100, 100);
  }
   if (southRoom != #ffffff) {
    ellipse(width/2, height*0.9, 100, 100);
  }
   if (westRoom != #ffffff) {
    ellipse(width*0.1, height/2, 100, 100);
  }

  //floor
  fill(white);
  rect(width/2, height/2, width*0.8, height*0.8);
  image(cobble, width/2, height/2, width*0.8, height*0.8);
}

void drawGameObjects() {
  //player
  p1.show();
  p1.act();
}

void drawLightLayer() {
  fill(black);
  noStroke();
  DC = new DarkCell(width/2, height/2, 50);
  DC.show();
}

void drawMiniMap() {
  image(map, width*0.05, height*0.05, 50, 50);
}
