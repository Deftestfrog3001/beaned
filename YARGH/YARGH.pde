boolean Wkey, Skey, Akey, Dkey, Spacekey, Shiftkey;
boolean mouseReleased;
boolean hadPressed;
gif campfire;
//DarkCell DC;
PFont Pixel;

//images
PImage map;
color northRoom, eastRoom, southRoom, westRoom;

//textures
PImage cobble;

//color pallette
color blue   = #28E7ED;
color green  = #CEF255;
color pink   = #F76DDC;
color yellow = #FFF387;
color black  = #000000;
color white  = #FFFFFF;
color red    = #FF0000;
color aqua   = #09B6E8;

int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int WIN=3;
final int LOSS=4;

//buttons
Button StartB;

//Game objects
ArrayList<GameObject> myObjects;
ArrayList<DarkCell> DC;
Player p1;

//
int s;

void setup() {
  frameRate(60);
  //fullScreen(FX2D);
  size(800, 600, FX2D);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  p1 = new Player();
  Pixel = createFont("alagard.ttf", 1);
  campfire = new gif(5, 7, "frame_", "_delay-0.1s.png");
  map = loadImage("map.png");
  textFont(Pixel);
  s = 2;

  //textures
  cobble = loadImage("cobble.png");

  //Create Darkness
  DC = new ArrayList<DarkCell>();
  float size = s;
  int x = 0, y = 0;
  while (x <= width) {
    DC.add(new DarkCell(x, y, size));
    
    if (x >= width) {
      y = y + s; 
      x = 0;
    } 
    x = x + s;
    if (y - s >= height) break;
  }
}

void draw() {

  if (mousePressed) hadPressed = true;
  else if (hadPressed && !mousePressed) {
    mouseReleased = true;
    hadPressed = false;
  } else if (mouseReleased) mouseReleased = false;

  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==WIN) {
    win();
  } else if (mode==LOSS) {
    loss();
  }
  println("mode =" + mode);
}
