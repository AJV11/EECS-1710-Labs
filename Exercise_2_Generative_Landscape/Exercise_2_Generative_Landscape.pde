PImage beach, person, sandcastle, birds, sun;
float x, y, wi, he;
float speedX = 1;

void setup() {
  
  size(1000, 700, P2D); //set size of the screen to 1000x700
  frameRate(60); //set frame rate to 60fps
  
  imageMode(CENTER); //set images to generate from the center point
  beach = loadImage("beach.jpg");
  person = loadImage("person.png");
  sandcastle = loadImage("sandcastle.png");
  birds = loadImage("birds.png");
  sun = loadImage("sun.png");
  
  x = width/2;
  y = height/2;
  wi = width/3;
  he = height/3;
  
}

void draw() {

  image(beach, x, y, width*2, height);
  
  if (mousePressed) { 
  }
  else {
  x += speedX;
  if (x > width || x < 0) {
    speedX *= -1;
   }
  }
  
  if (mouseX < 500 && mouseY > 350) {
    image(person, 250, 525, wi, he);
  }
  
  if (mouseX > 500 && mouseY > 350) {
    image(sandcastle, 750, 525, wi, he);
  }
  
  if (mouseX < 500 && mouseY < 350) {
    image(sun, 250, 125, wi, he);
  }
  
  if (mouseX > 500 && mouseY < 350) {
    image(birds, 750, 125, wi, he);
  }

}
