PFont font;
String welcome = "Welcome to my Random Art Creator!";
String controls = "Here are the controls:";
String red = "Press 'r' for red background.";
String green = "Press 'g' for green background.";
String blue = "Press 'b' for blue background.";
String white = "Press 'w' for white background.";
String black = "Press 'l' for black background.";
String random = "Hold 'a' to randomize background.";
String clear = "Press 'c' to clear background.";
String name = "By: Anthony Venditti.";
String disappear = "**Please change background to make controls disappear!**";
float circleSize = 15;
color bgColor = color(0, 0, 0);
int fontSize = 25;

void setup() {
  size(800, 800, P2D);
  frameRate(120);
  background(bgColor);
  
  font = createFont("Times New Roman", fontSize);
  textFont(font, fontSize);
  textAlign(CENTER);
}

void draw() {  
  
  if (mousePressed == true) {
    rectMode(CENTER);
    fill(random(255), random(255), random(255));
    stroke(random(255), random(255), random(255));
    strokeWeight(random(10));
    line(mouseX, mouseY, pmouseX, pmouseY);
    ellipse(mouseX, mouseY, circleSize, circleSize);
    textFont(font, 1);
  }
  if (mousePressed == false) {
     text(welcome, 400, 50);
     text(controls, 400, 80);
     text(red, 400, 120);
     text(green, 400, 150);
     text(blue, 400, 180);
     text(white, 400, 210);
     text(black, 400, 240);
     text(random, 400, 270);
     text(clear, 400, 300);
     text(name, 680, 780);
     text(disappear, 400, 350);
  }
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      background(255, 0, 0);
    }
    if (key == 'g' || key == 'G') {
      background(0, 255, 0);
    }
    if (key == 'b' || key == 'B') {
      background(0, 0, 255);
    }
    if (key == 'w' || key == 'W') {
      background(255, 255, 255);
    }
    if (key == 'l' || key == 'L') {
      background(0, 0, 0);
    }
    if (key == 'a' || key == 'A') {
      background(random(255), random(255), random(255));
    }
    if (key == 'c' || key == 'C') {
      clear();
    }
  }
}
