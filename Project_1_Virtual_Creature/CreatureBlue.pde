class CreatureBlue {
  
  PImage current, blueForward, blueBackward;
  float xb, yb;
  float speedX, speedY;
  float size;
  
  CreatureBlue() {
    imageMode(CENTER);
    blueForward = loadImage("Blue.png");
    blueBackward = loadImage("Blue2.png");
    current = blueForward;
    
    xb = random(20, width - 20);
    yb = random(20, height - 20);
    speedX = 3; 
    speedY = 3;
    size = 40;
    
  }
  
  void draw() {
    
    image(current, xb, yb, size, size); 
    xb += speedX;
    yb += speedY;
    if (speedX > 0) {
      current = blueForward;
    }
    else if (speedX < 0) {
      current = blueBackward;
    }
    
    if (xb > width - size/2 || xb < 0 + size/2) {
      speedX *= -1;
    }
    if (yb > height - size/2 || yb < 0 + size/2) {
      speedY *= -1;
    }
    
    for (int i = 0; i<foods.length; i++) {
      if (xb - size/2 <= foods[i].position.x + 10 && xb + size/2 >= foods[i].position.x - 10 && yb - size/2 <= foods[i].position.y + 10 && yb + size/2 >= foods[i].position.y - 10 && foods[i].alive == true) {
        
        size = size + 3;
        image(current, xb, yb, size, size); 
        
         if (speedX > 0 && speedY > 0) {
           speedX = speedX - 0.05;
           speedY = speedY - 0.05;
         }
         if (speedX < 0 && speedY < 0) {
           speedX = speedX + 0.05;
           speedY = speedY + 0.05;
         }
         if (speedX > 0 && speedY < 0) {
           speedX = speedX - 0.05;
           speedY = speedY + 0.05;
         }
         if (speedX < 0 && speedY > 0) {
           speedX = speedX + 0.05;
           speedY = speedY - 0.05;
         }
         
         cnt = cnt + 1;
         foods[i].alive = false;
         if (cnt == foods.length) {
           cnt = 0;
             for (int j=0; j<foods.length; j++) {
               foods[j].alive = true;
             }
         }
         int rem = 45 - cnt;
         //System.out.println(speedX+", "+speedY+", "+size);
         System.out.println("Stars Ate(this round): "+cnt+"   Stars Remaining(this round): "+rem);

        }
      }
    }
  
  void run() {
    draw();
  }
  
}
