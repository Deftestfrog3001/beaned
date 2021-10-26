void game() {
  //level
  background(white);
  fill(black);
  stroke(5);
  
  //walls
  line(0,0,width,height);
  line(width,0,0,height);
  
  //floor
  fill(white);
  rect(width/2,height/2, width*0.8, height*0.8);
  
  //player
  p1 = new Player();
  p1.show();
  p1.act();
  
  println(p1.loc);
  println(p1.vel);
  println(Wkey);
}
