

/* Initialize Variables */
// Put the variables you need

int R = 255;
int B = 230;
int G = 180;
color ballColor = color(R, G, B);

// Large Square Variables
/* These variables are the position and size exclusive to the large square */
int lsSize = 300;
int lsXpos;
int lsYpos;
int lsXspd;
int lsYspd;

// Small Square Variables
/* These variables are the position and size exclusive to the small square */
int smSize = 30;
int smXpos;
int smYpos;
int smXspd;
int smYspd;

// Variables common to both squares
int maxXspd = 10;
int maxYspd = 10;

void setup(){
  size(800, 800); // create the window size
  frameRate(30);
  rectMode(CENTER); // use the center of the square as the xy position
  
  // initialize large square
  lsXpos = width/2;
  lsYpos = height/2;
  lsXspd = maxXspd;
  lsYspd = maxYspd;
  
  // initialize sm square
  smXpos = width/2;
  smYpos = height/2;
  smXspd = maxXspd;
  smYspd = maxYspd;
  
}

void draw(){
 
  /* first: check if the ball is on the screen */
  
  // Large Ball Check
  
  if(lsXpos >= width) {
    lsXspd = -int(random(1, maxXspd));
    println("hit right");
  } // changes x direction
  if(lsXpos <= 0) {
    lsXspd = int(random(1, maxXspd));
    println("hit left");
  } // changes x direction
  
  if(lsYpos >= height) {
    lsYspd = -int(random(1, maxYspd));
    println("hit bottom");
  } // changes y direction
  
  if(lsYpos <= 0) {
    lsYspd = int(random(1, maxYspd));
    println("hit top");
  } // changes y direction
  
  
  // Small Ball Check
  
  
  if(lsXpos >= width) {
    lsXspd = -int(random(1, maxXspd));
    println("hit right");
  } // changes x direction
  if(lsXpos <= 0) {
    lsXspd = int(random(1, maxXspd));
    println("hit left");
  } // changes x direction
  
  if(lsYpos >= height) {
    lsYspd = -int(random(1, maxYspd));
    println("hit bottom");
  } // changes y direction
  
  if(lsYpos <= 0) {
    lsYspd = int(random(1, maxYspd));
    println("hit top");
  } // changes y direction
  
  print("Large Square X position: ");
  println(lsXpos);
  print("Large Square Y position: ");
  println(lsYpos);
  
  /* second: calculate/update the position of the ball */
  lsXpos += lsXspd;
  lsYpos += lsYspd;
  
  smXpos += smXspd;
  smYpos += smYspd;
  
  
  /* final step: fill color + draw the ball */
  fill(ballColor);
  rect(lsXpos, lsYpos, lsSize, lsSize);
  
  fill(255);
  rect(smXpos, smYpos, smSize, smSize);
  
}
