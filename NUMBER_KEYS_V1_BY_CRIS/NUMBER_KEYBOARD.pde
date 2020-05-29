/////////////////////////////////////////////////////////
// 
// STUFF RELATED TO THE VIRTUAL KEYBOARD
//
// BY CRIS 2020
//
// COPY ALL THIS FOLDER TO YOUR CODE
// AND HAVE FUN!!!
//
/////////////////////////////////////////////////////////

////////////////////////////////////////////
// GLOBAL VARIABLE DECLARATIONS
////////////////////////////////////////////
int char_size_number_buttons;                  // SHOULD BE GLOBAL DUE TO SETUP SCREEN DEFINITION
String new_char_from_keyboard=" ";             // IF " " NO TYPING
int max_numbers_accumulated=10;                // CHOOSE THE MAXIMUM NUMBER'S SIZE
String number_from_keyboard_accumulator="";    // MEMORIZES THE TOTAL NUMBER TYPED


//////////////////////////////////////////
// IF TRUE, NUMERIC KEYBOARD IS SHOWED
// IF FALSE, NUMERIC KEYBOARD IS HIDDEN
// YOU HAVE TO CREATE A CERTAIN AREA 
// ON YOUR SCREEN TO ACTIVATE
// FOR THE MOMENT, ANYWHERE YOU CLICK
// THE KEYBOARD WILL CHANGE ITS STATUS
//////////////////////////////////////////
boolean numeric_keyboard_active;

//////////////////////////////////////////////////////
// DEFINITIONS RELATED TO THE OBJECT'S CREATION
//////////////////////////////////////////////////////
final int maxnumberbuttons=12;
numberbuttons[] mynumberbutton = new numberbuttons[maxnumberbuttons];


/////////////////////////////////
//
//
//
/////////////////////////////////
void accumulatenumbersfromkeyboard() {
  
  String temp=number_from_keyboard_accumulator;
  int x=temp.length();
    
  if (new_char_from_keyboard!="<") {
    if (new_char_from_keyboard!=".") temp+=new_char_from_keyboard;
    else {
      boolean already_a_dot=false;
      for (int i=0;i<x;i++) if(temp.charAt(i)=='.') already_a_dot=true;
      if (already_a_dot==false && x!=0) temp+=".";
    }
    if (x>max_numbers_accumulated-1) temp=temp.substring(0,x-1)+new_char_from_keyboard;
  }
  else if (x>0) temp=temp.substring(0,x-1);
    
  number_from_keyboard_accumulator=temp;
  
  x=temp.length();
  
  new_char_from_keyboard=" ";
  
  // DEBUG ONLY
  //if(x!=0) println(float(number_from_keyboard_accumulator));

}
/////////////////////////////////////////////////////////
//
// SCAN ALL KEYS FOR MOUSE CLICK 
// (OR FINGER CLICK, ON ANDROID DEVICES)
//
// GLOBAL VARIABLES MODIFIED: NUMERIC_KEYBOARD_ACTIVE
// AND new_char_from_keyboard
//
/////////////////////////////////////////////////////////
void checkmouseclickedallnumberbuttons() {
  
  new_char_from_keyboard=" ";
  
  // COPY TO YOUR CODE!!!
  if(numeric_keyboard_active==true) {
    for (int i=0; i<maxnumberbuttons;i++) mynumberbutton[i].checkmouseclick(i); 
  }

  //if(new_char_from_keyboard==" ") numeric_keyboard_active=!numeric_keyboard_active; 

}

/////////////////////////////////////////////////////////
// DRAW ALL NUMBER VIRTUAL KEYS
/////////////////////////////////////////////////////////
void drawallnumberbuttons() {
  for (int i=0; i<maxnumberbuttons;i++) mynumberbutton[i].drawbutton();
}


//////////////////////////////////////////////////////////
// OBJECTS INITIALIZATION
//////////////////////////////////////////////////////////
void initializeallnumberbuttons(){
  
  //numeric_keyboard_active=true;
    
  ///////////////////////////////////////////
  // HERE YOU CAN CHANGE THE KEYBOARD 
  // GEOMETRICAL DEFINITIONS
  // SIZE: DX AND DY
  // POSITION ON SCREEN: Y0 
  // X0 SHOULD BE CHANGE DIRECTLY 
  // ON THE FOR LOOP
  ///////////////////////////////////////////
  int y0=height-char_size_number_buttons;
  int dx=char_size_number_buttons;
  int dy=int(1.1*char_size_number_buttons);
  int x_multiplier=int(char_size_number_buttons*1.2);
  
  for (int i=0; i<maxnumberbuttons;i++) mynumberbutton[i] = new numberbuttons(x_multiplier*i,y0,dx,dy,str(i),false,false,50,0);
  
  // TWO SPECIAL KEYS, DOT AND BACKSPACE
  mynumberbutton[10].text=".";
  mynumberbutton[11].text="<";  
  
}


//////////////////////////////////////////////////////////
// 
// CLASS STARTS HERE
//
//////////////////////////////////////////////////////////
class numberbuttons {
  
  int x;
  int y;
  int dx;
  int dy;
  String text;
  boolean active;
  boolean high;
  int internalcolor;
  int bordercolor;
  
  numberbuttons(int tempx, int tempy, int tempdx, int tempdy, String temptext, boolean tempactive, boolean temphigh, int tempic, int tempbc) {
    x=tempx; y=tempy; dx=tempdx; dy=tempdy; text=temptext; active=tempactive; high=temphigh;internalcolor=tempic;bordercolor=tempbc;}
  
  ////////////////////////////////////
  //
  // JUST DRAW ONE KEY
  //
  // NO GLOBAL MODIFIED
  //
  //////////////////////////////////// 
  void drawbutton() {    

    strokeWeight(4);
    
    stroke(bordercolor);  
    
    // YELLOW KEY COLOR
    fill(255,255,10);

    // DRAW THE VIRTUAL KEY RECTANGLE AROUND THE KEY'S NUMBER 
    rect(x,y-char_size_number_buttons/5,dx,dy,char_size_number_buttons/3);
    
    ////////////////////////////////////
    // PRINT TEXT ON THE SCREEN!!!
    // COMMENT IF YOU WANNA DO SOMETHING ELSE
    ////////////////////////////////////
    fill(0);
    textSize(char_size_number_buttons);
    text(text,x+0.15*dx,y+0.65*dy);
    
  }
  
  ////////////////////////////////////////
  //
  // VERIFY IF MOUSE IS OVER A KEY
  //
  // MODIFY: new_char_from_keyboard GLOBAL VARIABLE
  //
  ////////////////////////////////////////
  void checkmouseclick(int i) {
    if (mouseX >= x && mouseX <= x+dx && 
      mouseY >= y && mouseY <= y+dy) {
      if (i==10) new_char_from_keyboard=".";
      else new_char_from_keyboard=text;
    }
  }
  
}
