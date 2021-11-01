import processing.sound.*;
SoundFile dialogue1, dialogue2, dialogue3, dialogue4, dialogue5, room;
SoundFile[] dialogue = new SoundFile[5];

PImage background;
PFont font;
int fontSize = 20;
int randomD;

void setup() {
  
  size(400, 600, P2D);
  imageMode(CENTER);
  textAlign(CENTER);
  background = loadImage("FortuneTeller.jpg");
  image(background, 200, 300, width, height);
  
  font = createFont("Times New Roman", fontSize);
  textFont(font, fontSize);
  text("Click SPACEBAR to receive a fortune!", 200, 550);
  text("*Please wait for Zoltar to finish to retry*", 200, 580);
  
  room = new SoundFile(this, "room.mp3");
  room.loop();
  
  for (int i = 0; i < 5; i ++) {
    if (i == 0) {
      dialogue[i] = dialogue1 = new SoundFile(this, "dialogue1.mp3");
      dialogue1.cue(0);
    }
    if (i == 1) {
      dialogue[i] = dialogue2 = new SoundFile(this, "dialogue2.mp3");
      dialogue2.cue(0);
    }
    if (i == 2) {
      dialogue[i] = dialogue3 = new SoundFile(this, "dialogue3.mp3");
      dialogue3.cue(0);
    }
    if (i == 3) {
      dialogue[i] = dialogue4 = new SoundFile(this, "dialogue4.mp3");
      dialogue4.cue(0);
    }
    if (i == 4) {
      dialogue[i] = dialogue5 = new SoundFile(this, "dialogue5.mp3");
      dialogue5.cue(0);
    }
  }
}      

void draw() {
  
  randomD = floor(random(5));
  System.out.println(randomD+" , "+dialogue[randomD]);
}

void keyPressed() {
  
  if (key == ' '){
    dialogue[randomD].play();
  }
}
 

/* WORKS CITED:

background image: https://unsplash.com/photos/0EX0Q16ScvY
background sound (room): https://youtu.be/gvIgkdXII90
dialogue messages: https://youtu.be/vPf0WCD6Tso

*/
