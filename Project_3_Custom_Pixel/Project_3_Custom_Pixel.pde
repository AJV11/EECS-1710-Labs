PImage starryNight, cafe, irises, wheatField;
ArrayList<Dot> dots;
ArrayList<Dot2> dots2;
ArrayList<Dot3> dots3;
ArrayList<Dot4> dots4;
int scaler = 5;

void setup() {
  
  frameRate(60);
  size(1000, 800, P2D);  
  starryNight = loadImage("starry.jpg");
  starryNight.resize(width, height);
  starryNight.loadPixels();
  
  cafe = loadImage("cafe.jpg");
  cafe.resize(width, height);
  cafe.loadPixels();
  
  irises = loadImage("irises.jpg");
  irises.resize(width, height);
  irises.loadPixels();
  
  wheatField = loadImage("wheatfield.jpg");
  wheatField.resize(width, height);
  wheatField.loadPixels();
  
  dots = new ArrayList<Dot>();
  dots2 = new ArrayList<Dot2>();
  dots3 = new ArrayList<Dot3>();
  dots4 = new ArrayList<Dot4>();

  for (int x = 0; x < cafe.width / 2; x += scaler) { 
    for (int y = 0; y < cafe.height / 2; y += scaler) {
      int loc = x + y * (cafe.width);
      
      dots.add(new Dot(x, y, cafe.pixels[loc]));
    }
  }
  
  for (int x = 501; x > starryNight.width / 2 && x < starryNight.width; x += scaler) { 
    for (int y = 0; y < starryNight.height / 2; y += scaler) {
      int loc = x + y * (starryNight.width);
 
      dots2.add(new Dot2(x, y, starryNight.pixels[loc])); 
    }
  }
  
  for (int x = 0; x < wheatField.width / 2; x += scaler) { 
    for (int y = 401; y > wheatField.height / 2 && y < wheatField.height; y += scaler) {
      int loc = x + y * (wheatField.width);
      
      dots3.add(new Dot3(x, y, wheatField.pixels[loc])); 
    }
  }
  
  for (int x = 501; x > irises.width / 2 && x < irises.width; x += scaler) { 
    for (int y = 401; y > irises.height / 2 && y < irises.height; y += scaler) {
      int loc = x + y * (irises.width);
      
      dots4.add(new Dot4(x, y, irises.pixels[loc])); 
    }
  }
}

void draw() { 
  
  for (Dot dot : dots) {
    dot.run();
  }
  for (Dot2 dot2 : dots2) {
    dot2.run();
  }
  for (Dot3 dot3 : dots3) {
    dot3.run();
  }
  for (Dot4 dot4 : dots4) {
    dot4.run();
  }
  surface.setTitle("Project 3 - Custom Pixel. fps: " + frameRate);
}


/* WORKS CITED:

starryNight image: https://media.sanctuarymentalhealth.org/wp-content/uploads/2021/03/04151535/The-Starry-Night.jpg 

cafe image: https://wallpapercave.com/wp/wp2112101.jpg

irises image: https://www.vincentvangogh.org/images/paintings/irises.jpg

wheatField image: https://www.allposters.com/-sp/Wheatfield-with-Crows-c-1890-Posters_i3623137_.htm

*/
