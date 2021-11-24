class Dot {

  PVector position;
  
  Dot(float x, float y) {
    position = new PVector(x, y);
  }
  
  void draw() {

    float time = radians(frameCount);
    stroke(255*(.5+.5*cos(time)), 255*(.5+.5*cos(time)), 255*(.5+.5*cos(time)));
    strokeWeight(60);
    point(position.x, position.y);
  }
  
  void run() {
    
    draw();
  }
}
