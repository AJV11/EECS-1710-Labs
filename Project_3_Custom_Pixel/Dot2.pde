class Dot2 {
  
  PVector position, target; 
  color col;
  float speed;
  
  Dot2(float posX, float posY, color colour) {
    position = new PVector(posX, posY);
    col = colour;
    speed = 0.0001;
  }
  
  void update() {
    
    if (mouseX > 500 && mouseY < 400) {
      target = new PVector(mouseX, mouseY);
    }
    else {
      target = new PVector(random(width), random(height));
    }
    if (mousePressed && mouseX > 500 && mouseY < 400) {
      target = new PVector(position.x, position.y);
    }
    position.lerp(target, speed);
    speed = speed + 0.000001;
  }
  
  void draw() {

    stroke(col);
    strokeWeight(5);
    point(position.x, position.y);
  }
  
  void run() {
    
    update();
    draw();
  }
  
}
