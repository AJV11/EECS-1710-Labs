PImage space;
int numBlue = 5;
int numPink = 5;
int numFood = 45;
int cnt = 0;

Food[] foods = new Food[numFood];
CreatureBlue[] blue = new CreatureBlue[numBlue];
CreaturePink[] pink = new CreaturePink[numPink];

void setup() {
  size(1400, 1000, P2D);
  frameRate(60);
  imageMode(CENTER);
  space = loadImage("Space.jpg");
  
  for (int i=0; i<foods.length; i++) {
    foods[i] = new Food(random(10, width - 10), random(10, height - 10), true);
  }
  
  for (int i=0; i<blue.length; i++) {
    blue[i] = new CreatureBlue();
  }
  
  for (int i=0; i<pink.length; i++) {
    pink[i] = new CreaturePink();
  }
}
void draw() {
  image(space, 700, 500, width, height);
  
  for (int i=0; i<foods.length; i++) {
    foods[i].run();
  }
  
  for (int i=0; i<blue.length; i++) {
    blue[i].run();
  }
  
  for (int i=0; i<pink.length; i++) {
    pink[i].run();
  }
  
}
