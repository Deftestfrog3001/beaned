boolean Wkey, Skey, Akey, Dkey, Spacekey;
boolean mouseReleased;
boolean hadPressed;
gif campfire;



int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int WIN=3;
final int LOSS=4;

void setup() {
  frameRate(60);
  //fullScreen(FX2D);
  size(800, 600, FX2D);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  
  campfire = new gif(5,7,"frame_","_delay-0.1s.png");
}

void draw() {
  
    if (mousePressed) hadPressed = true;
  else if (hadPressed && !mousePressed) {
     mouseReleased = true;
     hadPressed = false;
  }
  else if (mouseReleased) mouseReleased = false;
  
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
  } else {
    println("Error: mode =" + mode);
  }
}
