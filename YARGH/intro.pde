void intro() {
  campfire.show();

  //button(s)

  StartB  = new Button("Start", width/8*7, height/4*3, 200, 150, red , white);

  StartB.show();

  if (StartB.clicked) {
    mode = GAME;
  }
}

void IntroClicks() {
}
