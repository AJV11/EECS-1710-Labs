import processing.sound.*;

Dot dott;
Text textt;

PImage piano;
int colourPick;

SoundFile C, D, E, F, G, A, B;

void setup() {
  
  size(700, 300, P2D);
  imageMode(CENTER);
  piano = loadImage("keyboard.png");
  image(piano, 350, 150, width, height);
  dott = new Dot();
  textt = new Text();
  
  C = new SoundFile(this, "C note.mp3");
  C.cue(0);
  D = new SoundFile(this, "D note.mp3");
  D.cue(0);
  E = new SoundFile(this, "E note.mp3");
  E.cue(0);
  F = new SoundFile(this, "F note.mp3");
  F.cue(0);
  G = new SoundFile(this, "G note.mp3");
  G.cue(0);
  A = new SoundFile(this, "A note.mp3");
  A.cue(0);
  B = new SoundFile(this, "B note.mp3");
  B.cue(0);  
}


void draw() {
  
  image(piano, 350, 150, width, height);
  dott.run();
  textt.run();
}


void mousePressed() {
  
  if (colourPick == 0) {    // White (default)
    defaultPiano();
  }
  
  else if (colourPick == 1) {    // Red
    redPiano();
  }
  
  else if (colourPick == 2) {    // Orange
    orangePiano();
  }
  
  else if (colourPick == 3) {    // Yellow
    yellowPiano();
  }
  
  else if (colourPick == 4) {    // Green
    greenPiano();
  }
  
  else if (colourPick == 5) {    // Blue
    bluePiano();
  }
}


void redPiano() {
  
    if (mouseX < 100) {
      C.play(); 
      tint(153, 0, 0); 
      System.out.println("C note,");
    }
    if (mouseX > 100 && mouseX < 200) {
      D.play(); 
      tint(204, 0, 0);
      System.out.println("D note,");
    }
    if (mouseX > 200 && mouseX < 300) {
      E.play();
      tint(255, 0, 0);
      System.out.println("E note,");
    }
    if (mouseX > 300 && mouseX < 400) {
      F.play(); 
      tint(255, 51, 51); 
      System.out.println("F note,");
    }
    if (mouseX > 400 && mouseX < 500) {
      G.play(); 
      tint(255, 102, 102); 
      System.out.println("G note,");
    }
    if (mouseX > 500 && mouseX < 600) {
      A.play(); 
      tint(255, 153, 153);
      System.out.println("A note,");
    }
    if (mouseX > 600 && mouseX < 700) {
      B.play(); 
      tint(255, 204, 204); 
      System.out.println("B note,");
    }
}

void orangePiano() {
  
    if (mouseX < 100) {
      C.play(); 
      tint(153, 76, 0); 
      System.out.println("C note,");
    }
    if (mouseX > 100 && mouseX < 200) {
      D.play(); 
      tint(204, 102, 0);
      System.out.println("D note,");
    }
    if (mouseX > 200 && mouseX < 300) {
      E.play();
      tint(255, 128, 0);
      System.out.println("E note,");
    }
    if (mouseX > 300 && mouseX < 400) {
      F.play(); 
      tint(255, 153, 51); 
      System.out.println("F note,");
    }
    if (mouseX > 400 && mouseX < 500) {
      G.play(); 
      tint(255, 178, 102); 
      System.out.println("G note,");
    }
    if (mouseX > 500 && mouseX < 600) {
      A.play(); 
      tint(255, 204, 153);
      System.out.println("A note,");
    }
    if (mouseX > 600 && mouseX < 700) {
      B.play(); 
      tint(255, 229, 204); 
      System.out.println("B note,");
    }
}

void yellowPiano() {
  
    if (mouseX < 100) {
      C.play(); 
      tint(153, 153, 0); 
      System.out.println("C note,");
    }
    if (mouseX > 100 && mouseX < 200) {
      D.play(); 
      tint(204, 204, 0);
      System.out.println("D note,");
    }
    if (mouseX > 200 && mouseX < 300) {
      E.play();
      tint(255, 255, 0);
      System.out.println("E note,");
    }
    if (mouseX > 300 && mouseX < 400) {
      F.play(); 
      tint(255, 255, 51); 
      System.out.println("F note,");
    }
    if (mouseX > 400 && mouseX < 500) {
      G.play(); 
      tint(255, 255, 102); 
      System.out.println("G note,");
    }
    if (mouseX > 500 && mouseX < 600) {
      A.play(); 
      tint(255, 255, 153);
      System.out.println("A note,");
    }
    if (mouseX > 600 && mouseX < 700) {
      B.play(); 
      tint(255, 255, 204); 
      System.out.println("B note,");
    }
}

void greenPiano() {
  
    if (mouseX < 100) {
      C.play(); 
      tint(0, 153, 0); 
      System.out.println("C note,");
    }
    if (mouseX > 100 && mouseX < 200) {
      D.play(); 
      tint(0, 204, 0);
      System.out.println("D note,");
    }
    if (mouseX > 200 && mouseX < 300) {
      E.play();
      tint(0, 255, 0);
      System.out.println("E note,");
    }
    if (mouseX > 300 && mouseX < 400) {
      F.play(); 
      tint(51, 255, 51); 
      System.out.println("F note,");
    }
    if (mouseX > 400 && mouseX < 500) {
      G.play(); 
      tint(102, 255, 102); 
      System.out.println("G note,");
    }
    if (mouseX > 500 && mouseX < 600) {
      A.play(); 
      tint(153, 255, 153);
      System.out.println("A note,");
    }
    if (mouseX > 600 && mouseX < 700) {
      B.play(); 
      tint(204, 255, 204); 
      System.out.println("B note,");
    }
}

void bluePiano() {
  
    if (mouseX < 100) {
      C.play(); 
      tint(0, 0, 153); 
      System.out.println("C note,");
    }
    if (mouseX > 100 && mouseX < 200) {
      D.play(); 
      tint(0, 0, 204);
      System.out.println("D note,");
    }
    if (mouseX > 200 && mouseX < 300) {
      E.play();
      tint(0, 0, 255);
      System.out.println("E note,");
    }
    if (mouseX > 300 && mouseX < 400) {
      F.play(); 
      tint(51, 51, 255); 
      System.out.println("F note,");
    }
    if (mouseX > 400 && mouseX < 500) {
      G.play(); 
      tint(102, 102, 255); 
      System.out.println("G note,");
    }
    if (mouseX > 500 && mouseX < 600) {
      A.play(); 
      tint(153, 153, 255);
      System.out.println("A note,");
    }
    if (mouseX > 600 && mouseX < 700) {
      B.play(); 
      tint(204, 204, 255); 
      System.out.println("B note,");
    }
}

void defaultPiano() {
  
    if (mouseX < 100) {
      C.play(); 
      noTint();
      System.out.println("C note,");
    }
    if (mouseX > 100 && mouseX < 200) {
      D.play(); 
      noTint(); 
      System.out.println("D note,");
    }
    if (mouseX > 200 && mouseX < 300) {
      E.play();
      noTint(); 
      System.out.println("E note,");
    }
    if (mouseX > 300 && mouseX < 400) {
      F.play(); 
      noTint(); 
      System.out.println("F note,");
    }
    if (mouseX > 400 && mouseX < 500) {
      G.play(); 
      noTint(); 
      System.out.println("G note,");
    }
    if (mouseX > 500 && mouseX < 600) {
      A.play(); 
      noTint();
      System.out.println("A note,");
    }
    if (mouseX > 600 && mouseX < 700) {
      B.play(); 
      noTint(); 
      System.out.println("B note,");
    }
}


void keyPressed() {
  
  char letter = key;
  
  switch(letter) {
    case 'r':
    case 'R':
      colourPick = 1;
      tint(255, 0, 0);
      System.out.println("Keyboard Colour: Red");
    break;
    case 'o':
    case 'O':
      colourPick = 2;
      tint(255, 128, 0);
      System.out.println("Keyboard Colour: Orange");
    break;
    case 'y':
    case 'Y':
      colourPick = 3;
      tint(255, 255, 0);
      System.out.println("Keyboard Colour: Yellow");
    break;
    case 'g':
    case 'G':
      colourPick = 4;
      tint(0, 255, 0);
      System.out.println("Keyboard Colour: Green");
    break;
    case 'b':
    case 'B':
      colourPick = 5;
      tint(0, 0, 255);
      System.out.println("Keyboard Colour: Blue");
    break;
    case 'w':
    case 'W':
      colourPick = 0;
      noTint();
      System.out.println("Keyboard Colour: White (Default)");
    break;
  }
}
