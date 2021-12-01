Table myTable;
PFont font;

int fontSize = 20;
int y = 85;
int cnt = 0;

void setup() {
  
  myTable = loadTable("myTable.csv", "header");
  size(250, 565, P2D);
  background(0);
  textAlign(CENTER);
  font = createFont("Times New Roman", fontSize);
  textFont(font, fontSize);
  
  stroke(255);
  strokeWeight(3);
  line(125, 0, 125, 565);
  line(0, 45, 250, 45);
  strokeWeight(1);
  line(0, 115, 250, 115);
  line(0, 190, 250, 190);
  line(0, 270, 250, 270);
  line(0, 340, 250, 340);
  line(0, 410, 250, 410);
  line(0, 490, 250, 490);
}

void draw() {
  
  if (cnt == 0) {
    println("My Average Hours Of School Work Each Day Of The Week!!!");
    println();
  }
  if (cnt < 7) {
    for (TableRow row : myTable.rows()) {
      cnt = cnt + 1;
      String day = row.getString("Day of the Week");
      int hours = row.getInt("Average Hours");
      fill(255, 165, 0);
      text("Day", 65, 25);
      text("Avg Hours", 185, 25);
      fill(0, 200, 255);
      text(day, 65, y);
      fill(255, 255, 0);
      text(hours, 185, y);
      y = y + 75;
      println("I average around " + hours + " hours of school work on " + day + "'s.");
    }
  }
}
