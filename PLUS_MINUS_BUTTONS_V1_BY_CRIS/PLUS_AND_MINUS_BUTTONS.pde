/////////////////////////////////////////////////////////
// 
// STUFF RELATED TO THE HIGHLIGHTEABLE BUTTONS
//
// BY CRIS 2020
//
// COPY ALL THIS FOLDER TO YOUR CODE
// AND HAVE FUN!!!
//
/////////////////////////////////////////////////////////

////////////////////////////////////
// GEOMETRICAL VARIABLES
////////////////////////////////////
int signal_buttons_char_size;
int signal_buttons_x_init;
int signal_buttons_y_init;

boolean plus_minus_buttons_activator=false;

////////////////////////////////////
// OBJECTS' INITIALIZATION
////////////////////////////////////
final int maxsignalbuttons=4;
signalbuttons[] mysignalbutton = new signalbuttons[maxsignalbuttons];
  
/////////////////////////////////////////////////////////
// SCAN ALL BUTTONS FOR MOUSE CLICK
/////////////////////////////////////////////////////////
void checkmouseclickedallsignalbuttons() {
  for (int i=0; i<maxsignalbuttons;i++) mysignalbutton[i].managemouseclick();
}

/////////////////////////////////////////////////////////
// DRAW ALL BUTTONS
/////////////////////////////////////////////////////////
void drawallsignalbuttons() {
  for (int i=0; i<maxsignalbuttons;i++) mysignalbutton[i].drawbutton();
}


/////////////////////////////////////////////////////////
// VERIFY IF MOUSE IS PASSING OVER WITHOUT CLICKING
/////////////////////////////////////////////////////////
void checkmouseoverallsignalbuttons() {
 for (int i=0; i<maxsignalbuttons;i++) mysignalbutton[i].checkmouseover();  
}


//////////////////////////////////////////////////////////
//
void initializeallsignalbuttons(){

  int wd=int(1.2*signal_buttons_char_size);
  int ht=int(1.2*signal_buttons_char_size);
  
  for (int i=0; i<maxsignalbuttons;i++) mysignalbutton[i] = new signalbuttons(0,0,0,0,"text"+i,false,false,50,0);
  
  // BUTTON 0
  mysignalbutton[0].x             =  signal_buttons_x_init;
  mysignalbutton[0].y             =  signal_buttons_y_init;
  mysignalbutton[0].dx            =  wd;
  mysignalbutton[0].dy            =  ht;
  //mysignalbutton[0].internalcolor =  100;
  //mysignalbutton[0].bordercolor   =  200;
  mysignalbutton[0].text          =  "+";

  // BUTTON 1
  mysignalbutton[1].x             =  signal_buttons_x_init+6*signal_buttons_char_size;
  mysignalbutton[1].y             =  signal_buttons_y_init;
  mysignalbutton[1].dx            =  wd;
  mysignalbutton[1].dy            =  ht;
  //mysignalbutton[1].internalcolor =  100;
  //mysignalbutton[1].bordercolor   =  200;
  mysignalbutton[1].text          =  "+";
  
  // BUTTON 2
  mysignalbutton[2].x             =  signal_buttons_x_init;
  mysignalbutton[2].y             =  signal_buttons_y_init+3*signal_buttons_char_size;
  mysignalbutton[2].dx            =  wd;
  mysignalbutton[2].dy            =  ht;
  //mysignalbutton[2].internalcolor =  100;
  //mysignalbutton[2].bordercolor   =  200;
  mysignalbutton[2].text          =  "+";
  
  // BUTTON 3
  mysignalbutton[3].x             =  signal_buttons_x_init+6*signal_buttons_char_size;
  mysignalbutton[3].y             =  signal_buttons_y_init+3*signal_buttons_char_size;
  mysignalbutton[3].dx            =  wd;
  mysignalbutton[3].dy            =  ht;
  //mysignalbutton[3].internalcolor =  100;
  //mysignalbutton[3].bordercolor   =  200;
  mysignalbutton[3].text          =  "+";

  // ADD MORE OF THESE BLOCKS IF MORE THAN 4 SIGNAL BUTTONS
}


//////////////////////////////////////////////////////////
// 
// CLASS STARTS HERE
//
//////////////////////////////////////////////////////////
class signalbuttons {
  
  int x;
  int y;
  int dx;
  int dy;
  String text;
  boolean active;
  boolean high;
  int internalcolor;
  int bordercolor;
  
  signalbuttons(int tempx, int tempy, int tempdx, int tempdy, String temptext, boolean tempactive, boolean temphigh, int tempic, int tempbc) {
    x=tempx; y=tempy; dx=tempdx; dy=tempdy; text=temptext; active=tempactive; high=temphigh;internalcolor=tempic;bordercolor=tempbc;}
  
  void drawbutton() {    

    strokeWeight(4);
    
    stroke(bordercolor);  
    
    if (high==true) stroke(255);   
    
    fill(internalcolor);  
    rect(x,y,dx,dy,4);
    
    // DRAW TEXT!!!
    fill(255);
    text(text,x+0.15*dx,y+0.8*dy);
    
  }
  
  /////////////////////////////////////////
  // DETECT AN RETURN IF MOUSE IS OVER OR NOT
  // HIGH=TRUE MEANS YES
  /////////////////////////////////////////
  boolean checkmouseover() {
    if (mouseX >= x && mouseX <= x+dx && 
      mouseY >= y && mouseY <= y+dy) return (true);
    return(false);
  }
  
  ///////////////////////////////////
  // CHANGE THE SIGNAL 
  // PLUS OR MINUS
  //
  // TO ACCESS THIS ANYWHERE IN YOUR 
  // CODE, JUST USE
  // 
  // mysignalbutton[button number here].text 
  //
  // WHERE "button number here" IS ACTUALY
  // ONE NUMBER BETWEEN 0 AND THE MAXIMUM
  //
  ///////////////////////////////////
  void managemouseclick() {
    if (checkmouseover()==true) {
      if (text=="+") text="-";
      else text="+";
    }; 
  }
  
}
