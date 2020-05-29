/////////////////////////////////////////////
//
// THIS CODE IS A VIRTUAL NUMERIC KEYBOARD
//
// ESPECIALLY DESIGNED FOR ANDROID DEVICES
//
// USE AS YOU WISH IN YOUR CODE
//
// COPY THE NUMBER_KEYBOARD TAB AS WELL
//
// BY CRIS JASPER 2020
//
/////////////////////////////////////////////



void setup() {
  
  // JUST UNCOMMENT ONE SCREEN SIZE
  // TO CHOOSE ONE
  
  fullScreen();
  
  // THESE ARE COMMON SIZES FOR ANDROID DEVICES
  //size(1136,640);
  //size(1920,1080);
  //size(2560,1440);
  //size(1280,720);
  //size(1704,960);
  
  orientation(LANDSCAPE);

  // EVERYWHERE YOU READ THIS MESSAGE
  // "COPY TO YOUR CODE"
  // DO IT TO HAVE THIS TOOL
  // WORKING FINE
  
  ////////////////////////////////////////////////
  // NUMERIC VIRTUAL KEYBOARD CODE
  // COPY TO YOUR CODE:
  char_size_number_buttons=int(width/20.0);
  numeric_keyboard_active=true; // IF YOU CHANGE THIS, THE KEYBOARD DISAPEARS
  initializeallnumberbuttons();
  ////////////////////////////////////////////////
  
}


void draw() {

  background(0); // THIS ERASE ALL YOUR SCREEN, UNCOMMENT IF NEEDED  

  //////////////////////////////////////////////////////////
  // NUMERIC VIRTUAL KEYBOARD CODE
  // COPY TO YOUR CODE:
  //
  // USEFUL GLOBALS:
  //
  //  NUMERIC_KEYBOARD_ACTIVE
  //  NEW_CHAR_FROM_KEYBOARD
  //  NUMBER_FROM_KEYBOARD_ACCUMULATOR
  //
  //
  //numeric_keyboard_active=true; // IF FALSE, THE KEYBOARD DISAPEARS
  if (numeric_keyboard_active==true) { 
    drawallnumberbuttons();
    if (new_char_from_keyboard!=" ") accumulatenumbersfromkeyboard();
  }

  //////////////////////////////////////////////////////////
  
  
  // DEBUG ONLY:
  if (numeric_keyboard_active==true) { 
    stroke(255);
    noFill();
    rect(5,char_size_number_buttons/4,10*char_size_number_buttons,2*char_size_number_buttons);
    fill(255);  
    text(number_from_keyboard_accumulator+"_",100,100);
  }
 
 
 
}


void mousePressed() {
  
  ///////////////////////////////////////////////////
  // NUMERIC VIRTUAL KEYBOARD CODE
  // COPY TO YOUR CODE:
  if (numeric_keyboard_active==true) checkmouseclickedallnumberbuttons();
  ///////////////////////////////////////////////////
  
  
}
