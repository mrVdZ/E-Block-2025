


// This is an example that demonstrates
// how to use Objects/classes
// pushMatrix() and popMatrix()
// and it will also show 3D





// Global Variable

int translateX = 0;
BouncyBall ballThatBounces; // Declares the object from the class





// This function runs once at the beginning
void setup()

{
    size(200, 200, P3D);
    background(200, 200, 255);
    
    rectMode(CENTER);
    
    frameRate(5);
    
    ballThatBounces = new BouncyBall(); // constructs the object from the class
    
  
}


// This function runs as a loop at 30 times per second
void draw()

{
  
  ballThatBounces.changeColorBB();
  ballThatBounces.updateBB();
  ballThatBounces.drawBB();
  
  // Unaffected Rectangle
  fill(255, 100, 100);
  rect(20, 20, 10, 10); // X, Y, W, H
  
  pushMatrix(); // Creates a virtual canvas for implementing transformations
    translate(translateX, 40);
    rotate(PI/3.0);
    fill(255, 100, 100);
    rect(0, 0, 30, 30); // X, Y, W, H
    
    pushMatrix();
      translate(30, 40);
      ellipse(0, 0, 30, 30);
    popMatrix();
    
  popMatrix(); // releases the virtual canvas
  
     // Unaffected Rectangle
    fill(255, 200, 100);
    rect(0, 00, 10, 10); // X, Y, W, H
    
    translateX++; // Changes the location of the square and circle each frame
}



// This class is a template for objects to be built
class BouncyBall

{
  
  int posX = 0;
  int posY = 0;
  int w = 20;
  int h = 20;
  
  BouncyBall(){ // This is the constructor function
    // When you call this, it returns an object with the data type of the class
    // You can use it to initialize objects and do default stuff
    
  }
  
  void drawBB(){
    
    ellipse(posX, posY, w, h);
    
  }
  
  void updateBB(){
    
    posX = 150;
    posY = 150;
    
  }
  
  void changeColorBB(){
    
    fill(255);
    
  }
  
}  // end of class BouncyBall
