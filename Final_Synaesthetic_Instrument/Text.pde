class Text {
  
  PFont font;
  
  Text() {
    
    textAlign(CENTER);
  }
  
  void draw() {
    
    int fontSize = int(map(mouseY, height, 0, 40, 10));
    
    font = createFont("Monotype Corsiva", fontSize);
    textFont(font, fontSize);
    
    text("C", 25, 30);
    text("D", 145, 30);
    text("E", 265, 30);
    text("F", 325, 30);
    text("G", 440, 30);
    text("A", 555, 30);
    text("B", 668, 30);
  }
  
  void run() {
    
    draw();
  }
}
