////////////////////////////////////
//
// THIS CODE SHOWS UP ON THE SCREEN
// A ROLLING HORIZONTAL TEXT
//
// BY CRIS 2020
//
//
//
////////////////////////////////////

void setup() {
  
  // CHOOSE ONE SCREEN SIZE
  // BY UNCOMMENT ONE OPTION:
  fullScreen();
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
  // ROLLING TEXT CODE
  // COPY TO YOUR CODE:
  orientation(LANDSCAPE);
  rolling_char_size=int(width/20.0);  
  rolling_x_init=int(width/10);
  rolling_y_init=int(height/5); 
  rolling_text_activator=true;
  
}


void draw() {
  
  // COPY TO YOUR CODE:  
  background(0); // OPTIONAL
  rolling_text_activator=true;
  if (rolling_text_activator==true) {
    fill(200,200,0); // TEXT COLOR
    showrollingtext("Hello World! HEllo WORld, hellO worLD ||| HELLO WORLD!",rolling_x_init,rolling_y_init);
  }

  
}
