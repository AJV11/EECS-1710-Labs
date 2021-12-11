class Dot {
    
  void draw() {
    
    int size = int(map(mouseX, 0, width, 100, 5));
    
    stroke(255);
    ellipse(mouseX, mouseY, size, size);
    if (mousePressed == false) {
      fill(0);
    }
    else if (mousePressed == true) {
      fill(100);
    }
  }
  
  void run() {
    
    draw();
  }
}
