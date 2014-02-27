//For some reason it doesn't work with 2 gradients. It draws cool bubbles when comment background gradient.
// Why?..

float wh;
color black = color(0, 0, 0);
color orange = color(255, 200, 0);

//Setup
void setup () {
   size (800, 600, P2D);
   noStroke ();
    //set background gradient
   {
      setGradient(0, 0, width/2, height, black, orange);
      setGradient(width/2, 0, width/2, height, orange, black);
         }
       }
   
// Background gradient description
void setGradient(int x, int y, float w, float hi, color c1, color c2) {
      for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+hi);  
     }
}

void draw() {         
}

//Draw bubbles using mause input
void mouseReleased() {  
  wh = random (10, 200);
    drawGradient (); 
   }
  
//Gradient for bubbles description
void drawGradient () {
 float h = 170;
 for (int (wh); wh>0; --wh){
   fill(255, h, 0);
    ellipse(mouseX, mouseY, wh, wh);
    if (h>90){
    h = (h - 1) % 360;
    }
  }
}


