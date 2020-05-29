/////////////////////////////////////////////
//
// THIS CODE IS A GROUP OF BUTTONS 
// WITH SIGNALS PLUS AND MINUS
// USEFULL TO ANDROID DEVICES
// NUMBER EDITING WINDOWS
//
// USE AS YOU WISH
//
// YOU SHOULD COPY THE TAB 
// PLUS_AND_MINUS_BUTTONS
// TO YOUR CODE AS WELL
//
// BY CRIS 2020
//
/////////////////////////////////////////////


void setup() {
  
  //////////////////////////////////
  // CHOOSE ONE SCREEN SIZE
  // BY UNCOMMENTING ONLY ONE
  // SCREEN SIZE
  //
  fullScreen();
  //size(1136,640);
  //size(1920,1080);
  //size(2560,1440);
  //size(1280,720);
  //size(1704,960);

  orientation(LANDSCAPE);
  
  /////////////////////////////////////////////////
  // COPY TO YOUR CODE
  // INSIDE SETUP LOOP
  //
  signal_buttons_char_size=int(width/30);
  signal_buttons_x_init=int(width-width/3);
  signal_buttons_y_init=int(height/5);
  plus_minus_buttons_activator=true;
  initializeallsignalbuttons();
  /////////////////////////////////////////////////
  
}


void draw() {

  background(0); // OPTIONAL

  /////////////////////////////////
  // COPY TO YOUR CODE INSIDE DRAW
  // LOOP:
  //
  if (plus_minus_buttons_activator==true) {
    color(255);
    textSize(signal_buttons_char_size);
    checkmouseoverallsignalbuttons();
    drawallsignalbuttons();
  }
  

  /////////////////////////////////
  
}


void mousePressed() {
  
  /////////////////////////////////////
  // COPY TO YOUR CODE!!!
  // INSIDE MOUSEPRESSED FUNCTION
  //
  if (plus_minus_buttons_activator==true) checkmouseclickedallsignalbuttons(); 
  /////////////////////////////////////
  
  
}
