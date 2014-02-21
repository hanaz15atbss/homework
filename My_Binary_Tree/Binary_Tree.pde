float thicknessL = 15;

void setup() {

  size(700, 700);

  scale(0.5, 0.5);

  background(255, 250, 250);

  frameRate(6);
}

void draw() {
  fill(255, 99);
  rect(0, 0, width, height);
  stroke(51, 0, 0);
  translate(width/2, height);
  rotate(radians(-90));
  drawTree(7, 8); //with two generation of base
}

void drawTree(int depth, float thickness) {
  if (depth>0) {

    strokeWeight(thickness);

    //draw the base
    line(0, 0, 100, 0);

    //move to the end of the branch
    translate(100, 0);

    //draw left branch
    pushMatrix();
    rotate(radians(random(-30, -20)));
    strokeWeight(thickness);
    line(0, 0, 100, 0); 
    //moves tree base function before drawing the next
    //line
    translate(100, 0);
    drawTree(depth - 1, thickness*0.8);
    popMatrix();

    //draw the right branch
    pushMatrix();
    rotate(radians(random(0, 50)));
    strokeWeight(thickness);
    line(0, 0, 100, 0);
    line(0, 0, 100, 0);
    translate(100, 0);
    drawTree(depth - 1, thickness*0.8);
    popMatrix();
  }
  if (depth==5) {
    rotate(radians(random(-30, 0)));
  }
  if (depth==4) {
    rotate(radians(random(-45, -15)));
  }
  if (depth==3) {
    rotate(radians(random(-60, -30)));
  }
  if (depth==2) {
    rotate(radians(random(-75, -45)));
  }
}
