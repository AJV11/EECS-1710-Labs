import gab.opencv.*;

OpenCV openCv;
PShape ps;

ArrayList<Contour> contours;
int threshold = 100;
float contourDetail = 0.000001; 
boolean armOpenCvUpdate = false;

void openCvSetup(PImage img) { 
  openCv = new OpenCV(this, img);
  ps = createShape(GROUP);
}

void openCvUpdate(PImage img) {
  if (armOpenCvUpdate) {
    openCv.loadImage(img);
    openCv.gray();
    openCv.threshold(threshold);
    contours = openCv.findContours();
    
    for (int i=ps.getChildCount()-1; i>=0; i--) {
      ps.removeChild(i);
    }
    
    for (Contour contour : contours) {   
      PShape child = createShape();
      child.beginShape();
      child.strokeWeight(5);
      child.beginShape();
      contour.setPolygonApproximationFactor(contourDetail);
      for (PVector point : contour.getPolygonApproximation().getPoints()) {
        point.mult(2);
        child.vertex(point.x, point.y);
      }
      child.endShape();
      ps.addChild(child);
    }
  }
  
  int number = key;
  System.out.println(key);
  switch(number) {
  
    case '1':
      fill(255, 0, 0);
    break;
    case '2':
      fill(0, 255, 0);
    break;
    case '3':
      fill(0, 0, 255);
    break;
    case '4':
      stroke(255, 165, 0);
    break;
    case '5':
      stroke(255, 192, 203);
    break;
    case '6':
      stroke(255, 255, 0);
    break;
    case '7':
      threshold = 150;
    break;
    case '8':
      threshold = 100;
    break;
    case '9':
      threshold = 50;
    break;
    case '0':
      threshold = 10;
    break;
  }
}
