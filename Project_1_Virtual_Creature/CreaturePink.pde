class CreaturePink {
  
  PImage current, pinkForward, pinkBackward;
  float xp, yp;
  float speedX, speedY;
  float size;
  
  CreaturePink() {
    imageMode(CENTER);
    pinkForward = loadImage("Pink.png");
    pinkBackward = loadImage("Pink2.png");
    current = pinkForward;

    xp = random(20, width - 20);
    yp = random(20, height - 20);
    speedX = 3;
    speedY = 3;
    size = 40;
    
  }
  
  void draw() {
    
    image(current, xp, yp, size, size);
    xp += speedX;
    yp += speedY;
    if (speedX > 0) {
      current = pinkForward;
    }
    else if (speedX < 0) {
      current = pinkBackward;
    }
    
    if (xp > width - size/2 || xp < 0 + size/2) {
      speedX *= -1;
    }
    if (yp > height - size/2 || yp < 0 + size/2) {
      speedY *= -1;
    }
    
    for (int i = 0; i<foods.length; i++) {
      if (xp - size/2 <= foods[i].position.x + 10 && xp + size/2 >= foods[i].position.x - 10 && yp - size/2 <= foods[i].position.y + 10 && yp + size/2 >= foods[i].position.y - 10 && foods[i].alive == true) {
        
        size = size + 3;
        image(current, xp, yp, size, size); 
        
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
