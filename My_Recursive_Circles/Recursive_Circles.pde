void setup(){
  noFill();
  size(500,500);
  drawCircle(width/2, height/2, height/2, 25, 25);
  drawCircle(width/2, height/2, height/2, 25, -25);
  drawCircle(width/2, height/2, height/2, -25, -25);
  drawCircle(width/2, height/2, height/2, -25, 25);
}

void drawCircle(int x, int y, float radius, int xDif, int yDif) {
  //new ellipse, which is smaller
  ellipse(x+10, y+10, radius-20, radius-20);
  if(radius>20){
    //recurse 
    drawCircle(x+xDif, y+yDif, radius-7, xDif, yDif);
  }
}
