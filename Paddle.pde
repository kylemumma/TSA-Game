class Paddle {

  int degOfOffset;
  float xCenter;
  float yCenter;
  float x1;
  float y1;
  float x2;
  float y2;
  float paddleScale = 5;
  color paddleColor;

  Paddle(int deg, color pdlColor) {
    degOfOffset = deg;
    paddleColor = pdlColor;
  }

  void show() {
    xCenter = angleToX(currentDegree, radius);
    yCenter = angleToY(currentDegree, radius);
    
    x1 = xCenter - (yCenter / paddleScale);
    y1 = yCenter + (xCenter / paddleScale);
    x2 = xCenter + (yCenter / paddleScale);
    y2 = yCenter - (xCenter / paddleScale);
    
    
    //fill(100);
    //ellipse(xCenter, yCenter, 10, 10);
    
    stroke(paddleColor);
    strokeWeight(5);
    line(x1, y1, x2, y2);
    noStroke();
    
  }

  private float angleToX(float angle, int radius) {
    return cos(radians(angle + degOfOffset)) * (radius); // x = (r)(cos(angle))
  }

  private float angleToY(float angle, int radius) {
    return (sin(radians(angle + degOfOffset)) * (radius)); // y = (r)(sin(angle))
  }
  
  
  
}
