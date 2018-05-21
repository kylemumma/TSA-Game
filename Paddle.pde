class Paddle {

  int degOfOffset;
  float xPos;
  float yPos;
  float paddleScale = 5;
  color paddleColor;

  Paddle(int deg, color pdlColor) {
    degOfOffset = deg;
    paddleColor = pdlColor;
  }

  void show() {
    xPos = angleToX(currentDegree, radius);
    yPos = angleToY(currentDegree, radius);
    
    //fill(100);
    //ellipse(yPos, xPos, 10, 10);
    
    stroke(paddleColor);
    strokeWeight(5);
    line(yPos + (xPos / paddleScale), xPos - (yPos / paddleScale),
    yPos - (xPos / paddleScale), xPos + (yPos / paddleScale));
    noStroke();
    
  }

  private float angleToX(float angle, int radius) {
    return cos(radians(angle + degOfOffset)) * (radius); // x = (r)(cos(angle))
  }

  private float angleToY(float angle, int radius) {
    return (sin(radians(angle + degOfOffset)) * (radius)); // y = (r)(sin(angle))
  }
  
  
  
}
