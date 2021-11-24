import peasy.*;

int scaler = 50;
int savedTime;
int totalTime = 30000;
float rot = 0.0;
ArrayList<Dot> dots; 
PeasyCam cam;

void setup() {
  
  size(800, 800, P3D);
  frameRate(60);
  colorMode(HSB);
  cam = new PeasyCam(this, 425, 400, 0, 700);
  loadPixels();
  dots = new ArrayList<Dot>();
  savedTime = millis();
  
  for (int x = 0; x < width + 100; x += scaler) {
    for (int y = 0; y < height + 100; y += scaler) {
      
      dots.add(new Dot(x, y));
    }
  }
}

void draw() {
  
  int passedTime = millis() - savedTime;
  
  if (passedTime < totalTime/3) {
    rotateZ(rot);
  }
  else if (passedTime > totalTime/3 && passedTime < totalTime*2/3) {
    rotateX(rot);
  }
  else if (passedTime > totalTime*2/3 && passedTime < totalTime) {
    rotateY(rot);
  }
  else if (passedTime >= totalTime) {
    savedTime = millis();
  }
  rot = (rot + 0.05) % 360;
  
  float time = radians(frameCount);
  background(255*(.5+.5*cos(time)),255,255);
  
  for (Dot dot : dots) {
    dot.run();
  }
  
  surface.setTitle("Exercise 7 - Iterative Pattern. fps: "+frameRate);
}


/* WORKS CITED:

Background color transition flow: https://www.reddit.com/r/processing/comments/9gr5pb/question_how_to_create_rainbow_color_cycle_in/

Timer system: http://learningprocessing.com/examples/chp10/example-10-04-timer

*/
