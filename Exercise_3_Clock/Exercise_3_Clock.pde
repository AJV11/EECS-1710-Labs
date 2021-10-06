float rot1 = 0;
float rot2 = 0;
float rot3 = 0;
float lengthHand1 = 250;
float lengthHand2 = 200;
float lengthHand3 = 100;
int lastSecond = 0;
int lastMinute = 0;
int lastHour = 0;
PFont font;
color clockBorder = color(0);
color clockFace = color(255);
color clockNumbers = color(0);
PImage coffee, sun, sunset, moon;

void setup() {
  size(800, 800, P2D);
  imageMode(CENTER);
  textAlign(CENTER);
  font = createFont("Castellar", 50);
  textFont(font);
  background(255, 165, 0);
  
  coffee = loadImage("coffee.png");
  sun = loadImage("sun.png");
  sunset = loadImage("sunset.png");
  moon = loadImage("moon.png");
}

void draw() {
  int sec = second();
  int min = minute();
  int hour = hour();
  
  if (sec != lastSecond) {
    rot1 = ((float) sec / 60) * TWO_PI;
    lastSecond = sec;
    background(random(255), random(255), random(255));
    println("Time(24hr): "+hour+": "+min+": "+sec);
    if (sec == 30 || sec == 0) {
        clockNumbers = color(random(255), random(255), random(255));
    }
  }
  
  if (min != lastMinute) {
    rot2 = ((float) min / 60) * TWO_PI; 
    lastMinute = min;
    clockBorder = color(random(255), random(255), random(255));
  }
  
  if (hour != lastHour) {
    rot3 = ((float) hour / 12) * TWO_PI;  
    lastHour = hour;
    clockFace = color(random(255), random(255), random(255));
  }
  
    if (hour == 6 || hour == 7 || hour == 8 || hour == 9 || hour == 10 || hour == 11) {
      image(coffee, 100, 100, 120, 120);
    }
    else if (hour == 12 || hour == 13 || hour == 14 || hour == 15 || hour == 16 || hour == 17) {
      image(sun, 700, 100, 120, 120);
    }
    else if (hour == 18 || hour == 19 || hour == 20 || hour == 21 || hour == 22 || hour == 23) {
      image(sunset, 700, 700, 140, 140);
    }
    else if (hour == 0 || hour == 1 || hour == 2 || hour == 3 || hour == 4 || hour == 5) {
      image(moon, 100, 700, 100, 100);
    }
  
  ellipse(width/2, height/2, 600, 600);
  fill(clockFace);
  stroke(clockBorder);
  strokeWeight(25);
  pushStyle();
  fill(0);
  ellipse(width/2, height/2, 20, 20);
  pushStyle();
  stroke(255, 0, 0);
  strokeWeight(1);
  fill(255, 0, 0);
  
  pushMatrix();
  pushStyle();
  translate(width/2, height/2);
  rotate(rot1);
  line(0, 0, 0, -lengthHand1);
  ellipse(0, -lengthHand1, 10, 10);
  stroke(0, 255, 0);
  strokeWeight(5);
  fill(0, 255, 0);
  popMatrix();

  pushMatrix();
  pushStyle();
  translate(width/2, height/2);
  rotate(rot2);
  line(0, 0, 0, -lengthHand2);
  ellipse(0, -lengthHand2, 10, 10);
  stroke(0, 0, 255);
  strokeWeight(10);
  fill(0, 0, 255);
  popMatrix();
  
  pushMatrix();
  pushStyle();
  translate(width/2, height/2);
  rotate(rot3);
  line(0, 0, 0, -lengthHand3);
  ellipse(0, -lengthHand3, 10, 10);
  popMatrix();
    
  popStyle();
  popStyle();
  popStyle();
  popStyle();
  popStyle();

  pushStyle();
  numbers();
  popStyle();
}

void numbers() {
  
  fill(clockNumbers);
  textSize(60);
  
  text("12", 400, 175);
  text("1", 530, 210);
  text("2", 600, 300);
  text("3", 650, 420);
  text("4", 600, 540);
  text("5", 520, 630);
  text("6", 400, 675);
  text("7", 280, 630);
  text("8", 200, 540);
  text("9", 150, 420);
  text("10", 200, 300);
  text("11", 270, 210);
  
}

/* WORKS CITED:

coffee image: http://clipart-library.com/free/coffee-cup-transparent-background.html 

sun image: https://www.seekpng.com/ipng/u2w7y3q8q8w7q8e6_sun-transparent-background-download-sun-png/

sunset image: https://pngtree.com/freepng/vector-sunset-icon_3773518.html

moon image: http://clipart-library.com/free/cartoon-moon-transparent.html
*/
