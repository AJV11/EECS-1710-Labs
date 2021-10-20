class Cars {
  
  PImage colour;
  int positionX;
  int speed;
  int y = -100;
  final static int leftX = 255; 
  final static int rightX = 345;
  
  Cars(PImage colour, int positionX, int speed) {
    imageMode(CENTER);
   
    this.colour = colour;
    if (positionX == 0) {
      this.positionX = leftX;
    }
    else {
      this.positionX = rightX;
    }
    this.speed = speed;
    image(colour, positionX, y, 50, 100);
  }
  
  int getX() {
    return this.positionX;
  }
  
  int getY() {
    return this.y;
  }
  
  void updateY(int inc) {  
    this.y += inc;
  }
  
  int getSpeed() {
    return this.speed;
  }
  
  void updateSpeed(int speed) {  
    this.speed = speed;
  }
}
