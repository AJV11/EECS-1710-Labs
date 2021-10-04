class Food {
  
  PVector position;
  boolean alive;
  Food(float x, float y, boolean alive) {
    position = new PVector(x, y);
    this.alive = alive;
  }
  
  void draw() {
    if (alive) {
      pushMatrix();
      translate(position.x, position.y);
      star(0, 0, 10, 5, 5); 
      fill(255, 255, 80);
      noStroke();
      popMatrix();
    }
  }
  
  void star(float xs, float ys, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = xs + cos(a) * radius2;
    float sy = ys + sin(a) * radius2;
    vertex(sx, sy);
    sx = xs + cos(a+halfAngle) * radius1;
    sy = ys + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

  void run() {
    draw();
  }
  
}
