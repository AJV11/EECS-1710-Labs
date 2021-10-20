class RedCar {
  
  PImage redCar;
  int positionX;
  int rightX = 345;
  int y = 650;
  int leftX = 255;
  
  RedCar() {
    imageMode(CENTER);
    redCar = loadImage("RedCar.png");
    image(redCar, rightX, y, 50, 100);
    positionX = rightX;
        
  }

  int getPositionX() {
    return this.positionX;
  }
  
  
  int getPositionY() {
    return this.y;
  }
  
  void setPositionX() {   //<>//
    if (this.positionX == rightX) {
      this.positionX = leftX;
  } //<>//
    else if (this.positionX == leftX){
      this.positionX = rightX;
    }
  }
  
  boolean collides(Cars obstacle) {
    if (this.positionX == obstacle.getX() && this.y - 50 <= obstacle.getY() + 50 && this.y + 50 >= obstacle.getY() - 50) {
      return true;
    }
    else {
      return false;
    }
  }
}
