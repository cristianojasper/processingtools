////////////////////////////////////
//
// THIS CODE SHOWS UP ON THE SCREEN
// A ROLLING HORIZONTAL TEXT
//
// BY CRIS 2020
//
// COPY ALL OF THIS FOLDER TO YOUR CODE
// AND HAVE FUN
//
//
////////////////////////////////////

////////////////////////////////////
// 
// GLOBAL TIMING VARIABLES:
//
////////////////////////////////////
int rolling_counter=0;
int time_last_roll=millis();
boolean rolling_text_activator;

// GEOMETRICAL VARIABLES
int rolling_char_size;
int rolling_x_init;
int rolling_y_init;



/////////////////////////////////////
//
/////////////////////////////////////

void showrollingtext(String rt, int x0,int y0) {
  
  // DEFINES HOW MANY CHARS WILL BE SHOWN AT A TIME
  final int print_length=25; 
  
  // THIS DEFINE THE TIMMING OF THE ROLLING
  final int roll_every=200;
  
  final int tl=rt.length();
  
  // AVOID PRINTING BIGGER THAN THE TEXT ITSELF
  if (print_length>tl) {
    println("text is too short");
    return;
  }
  
  // UPDATE THE ROLLING COUNTER
  if (millis() > time_last_roll + roll_every)
  {
    time_last_roll = millis();
    rolling_counter++;
  }
  
  // AVOID LIMIT
  if(rolling_counter>tl) rolling_counter=0;
  
  // COLOR AND SIZE DEFINITIONS:
  color(200);
  stroke(255);
  noFill();
  strokeWeight(4);
  textSize(rolling_char_size);
  
  //// RECTANGLE AROUND THE TEXT
  //rect(x-0.2*charsize,y-1.1*charsize,charsize*print_length,1.4*charsize);
  
  ////////////////////////////////////////////////////////////////
  //
  // PRINT JUST A SECTION OF THE STRING:
  // FIRST NUMBER IS THE TOTAL TO PRINT AT A TIME
  // SECOND IS THE X COORDINATE
  // THIRD IS THE Y COORDINATE
  //
  ////////////////////////////////////////////////////////////////
  // A COPY OF TEXT STRING IS MADE HERE TO 
  // MAKE IT EASIER TO ROLL 
  final String doubled_text=rt+" "+rt;
  //
  text(doubled_text.substring(rolling_counter,rolling_counter+print_length), x0, y0);
  ///////////////////////////////////////////////////////////////////
  
}
