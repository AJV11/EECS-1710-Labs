PImage road;
PImage[] carColours;
PFont font1, font2, font3;
int multiplier = 1;
int y;
int fontSize1 = 50;
int fontSize2 = 18;
int fontSize3 = 80;
int activeCars = 0;
int newActiveCars = 0;
int incSpeed;
boolean gameOver = false;
Cars[] obstacles;
Cars[] activeObstacles;
RedCar rc;

void setup() {
  
  size(600, 800, P2D);
  frameRate(60);
  textAlign(CENTER);
  road = loadImage("Road.jpg");
  image(road, 0, 0, width, height);
  road.resize(600, 800);
  
  rc = new RedCar();
  obstacles = new Cars[75];
  activeObstacles = new Cars[75];
  carColours = new PImage [4];
  carColours[0] = loadImage("PinkCar.png"); carColours[1] = loadImage("OrangeCar.png"); carColours[2] = loadImage("BlueCar.png"); carColours[3] = loadImage("GreenCar.png");
  for (int i = 0; i < obstacles.length; i ++) {
    int obstaclePos = int(random(0, 2));
    int carColour = int(random(0, 4));
    obstacles[i] = new Cars(carColours[carColour], obstaclePos, multiplier); 
  }
}

void draw() { 
  
  if (gameOver == true) {
    loser();
  }
  else {
    int t = millis();
    int current = 0;
    if (t >= 0 && t < 30000) {
      current = 30000;
    }
    else if (t >= 30000 && t < 60000) {
      current = 60000;
      incSpeed = 1;
    }
    else if (t >= 60000 && t < 90000) {
      current = 90000;
      incSpeed = 2;
    }
    else if (t >= 90000 && t < 120000) {
      current = 120000;
      incSpeed = 3;
    }
    else if (t >= 122000) {
      current = 1;
    }
    this.refreshBackground(current);
    this.hud(current);
    image(rc.redCar, rc.getPositionX(), rc.getPositionY(), 50, 100);
  
    if (t >= 30000 && t < 60000 && t % 2000 > -1 && t % 2000 <= 14 && activeCars < 74) {
      activeObstacles[activeCars] = obstacles[activeCars];
      activeCars ++;
    }
    else if (t >= 60000 && t < 90000 && t % 1200 > -1 && t % 1200 <= 14 && activeCars < 74) {
      activeObstacles[activeCars] = obstacles[activeCars];
      activeCars ++;
    }
    else if (t >= 90000 && t < 120000 && t % 857 > -1 && t % 857 <= 14 && activeCars < 74) {
      activeObstacles[activeCars] = obstacles[activeCars];
      activeCars ++;
    }
  
    for (int i = 0; i < obstacles.length; i ++) {
      obstacles[i].updateSpeed(incSpeed);
      }
    }
  }

void keyPressed() {
  
  if (key == ' ') {
    rc.setPositionX();
    image(rc.redCar, rc.getPositionX(), rc.getPositionY(), 50, 100);
  }
}

void refreshBackground(int current) {
 
  if (current == 60000 && multiplier == 1) {
    multiplier += 3;
  }
  else if (current == 90000 && multiplier < 5) {
    multiplier += 3;
  }
  else if (current == 120000 && multiplier < 8) {
    multiplier += 3;
  }
  
  y = frameCount % height;
  for (int i = -(y * multiplier) ; i < height ; i += height) {
    copy(road, 0, 0, width, height, 0, -i, width, height);
  }
  for (int i = newActiveCars; i < activeCars; i ++) {
    if (rc.collides(activeObstacles[i]) == true) {
      for (int j = 0; j < activeCars; j ++) {
        gameOver = true;
        i = activeCars;
      } 
    }
    else {
      activeObstacles[i].updateY(multiplier);
      image(activeObstacles[i].colour, activeObstacles[i].positionX, activeObstacles[i].y, 50, 100);
      if (activeObstacles[i].getY() > 800) {
        newActiveCars ++;
      }
    } 
  }
}

void hud(int current) {
  
    int timeLimit = 30;
    int time = millis()/1000;
    int currentTime = abs(timeLimit - time);
    System.out.println("Time: "+time+"s , Speed: "+multiplier*10+"mph");
    
    fill(235, 0, 0);
    if (current == 30000) {
      font1 = createFont("Bauhaus 93", fontSize1);
      textFont(font1, fontSize1);
      text("DODGER", 490, 100);
      font2 = createFont("Times New Roman", fontSize2);
      textFont(font2, fontSize2);
      text("You = Red Car", 490, 150);
      text("Click spacebar to swap lanes", 490, 175);
      text("*AVOID THE CARS*", 490, 220);
      text("(30sec) Stage 1 - Slow", 490, 260);
      text("(60sec) Stage 2 - Medium", 490, 290);
      text("(90sec) Stage 3 - Fast", 490, 320);
      text("GAME STARTS IN: "+currentTime+"s", 490, 400);
    }
    if (current == 1) { 
      fill(random(255), random(255), random(255));
      font3 = createFont("Bauhaus 93", fontSize3);
      textFont(font3, fontSize3);
      text("YOU WIN!", 310, 400);
      fill(0);
      font2 = createFont("Times New Roman", fontSize2);
      textFont(font2, fontSize2);
      text("Please restart the game to play again!", 310, 450);
    }
}

void loser() {
  
  fill(235, 0, 0);
  font3 = createFont("Bauhaus 93", fontSize3);
  textFont(font3, fontSize3);
  text("YOU LOSE!", 310, 400);
  fill(0);
  font2 = createFont("Times New Roman", fontSize2);
  textFont(font2, fontSize2);
  text("Please restart the game to try again.", 310, 450);
}


/* WORKS CITED:

background road image: https://assist.skoda-avto.ru/images/street/strasse_20.jpg 

car image: https://www.cleanpng.com/png-sports-car-bird-s-eye-view-clip-art-race-car-988243/ 
(the green, blue, orange, and pink cars were manually edited by me using this original red car image^)

scrolling background code(line 107 to 110): https://forum.processing.org/two/discussion/20079/how-can-i-make-an-endless-scrolling-background.html

*/
