PImage background;
float x, speedX;
Alphabet alphabet;

void setup() {
  size(800, 800, P2D);
  alphabet = new Alphabet();
  imageMode(CENTER);
  background = loadImage("background.jpg");
  
  x = 400;
  speedX = 3;

}

void draw() {

  image(background, x, 400, width, height);
  
  x += speedX;
  if (x > width - 175 || x < 175) {
    speedX *= -1;  
  }
  
  alphabet.draw();
}


/* WORKS CITED:

background image: https://wallup.net/simple-colorful-abstract-gradient-lightning-easter-sky/

*/
