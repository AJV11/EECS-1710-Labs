void setup() {
  size(640, 480, FX2D);
  
  captureSetup(0);
}


void draw() {  
  float time = radians(frameCount);
  background(255*(.5+.5*cos(time)),255*(.5+.5*cos(time)),255*(.5+.5*cos(time)));
  
  if (videoImg != null) {
    if (openCv == null) {
      openCvSetup(videoImg);
    } else {
      openCvUpdate(videoImg);
    }
  }
  
  if (ps != null) shape(ps);

  surface.setTitle("Exercise 6 - Extrapolated Body. fps: " + frameRate);
}


/* WORKS CITED:

Nick's week 11 contour codes: https://github.com/eecs17xx/eecs1710-2021f/tree/main/Week11/Contour01

Background color transition flow: https://www.reddit.com/r/processing/comments/9gr5pb/question_how_to_create_rainbow_color_cycle_in/

*/
