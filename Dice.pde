Die die1;

void setup()
{
  noLoop();
  size(450,500);
  background(250);
}
void draw()
{
  int sum = 0;
  for(int i = 50; i < 450; i+=100){
    for(int j = 50; j < 450; j+=100){
      die1 = new Die (j, i);
      die1.roll();
      die1.show();
      sum += die1.rollValue;
    }
  }
  
  if(sum > 65){
    fill(204, 153, 255);
  } else if (sum > 60){
    fill(102, 204, 255);
  } else if (sum > 55){
    fill(153, 255, 153);
  } else if (sum > 50){
    fill(255, 255, 153);
  } else if (sum > 45){
    fill(255, 153, 102);
  } else {
    fill(255, 153, 204);
  }
  rect(0,450,450,50);
  fill(0);
  text("Sum: " + sum + "    " + "Average: " + sum/16.0 + "\n" + "Click to roll again!", 20,470);
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int rollValue;
  int dieX;
  int dieY;
  
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
    rollValue = 1;
  }
  void roll()
  {
    rollValue = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    rect(dieX, dieY, 48, 48);
    fill(0);
    
    if(rollValue == 1){
      fill(255, 153, 204);
      rect(dieX, dieY, 48, 48);
      fill(0);
      ellipse(dieX+24, dieY+24, 5, 5);
      
    } else if (rollValue == 2){
      fill(255, 153, 102);
      rect(dieX, dieY, 48, 48);
      fill(0);
      ellipse(dieX+24, dieY+12,5,5);
      ellipse(dieX+24, dieY+36,5,5);
      
    } else if (rollValue == 3){
      fill(255, 255, 153);
      rect(dieX, dieY, 48, 48);
      fill(0);
      ellipse(dieX+24, dieY+12,5,5);
      ellipse(dieX+24, dieY+24,5,5);
      ellipse(dieX+24, dieY+36,5,5);
      
    } else if (rollValue == 4){
      fill(153, 255, 153);
      rect(dieX, dieY, 48, 48);
      fill(0);
      ellipse(dieX+12, dieY+12,5,5);
      ellipse(dieX+12, dieY+36,5,5);
      ellipse(dieX+36, dieY+12,5,5);
      ellipse(dieX+36, dieY+36,5,5);
      
    } else if (rollValue == 5){
      fill(102, 204, 255);
      rect(dieX, dieY, 48, 48);
      fill(0);
      ellipse(dieX+12, dieY+12,5,5);
      ellipse(dieX+12, dieY+36,5,5);
      ellipse(dieX+36, dieY+12,5,5);
      ellipse(dieX+36, dieY+36,5,5);
      ellipse(dieX+24, dieY+24,5,5);
      
    } else {
      fill(204, 153, 255);
      rect(dieX, dieY, 48, 48);
      fill(0);
      ellipse(dieX+18, dieY+12,5,5);
      ellipse(dieX+18, dieY+24,5,5);
      ellipse(dieX+18, dieY+36,5,5);
      ellipse(dieX+30, dieY+12,5,5);
      ellipse(dieX+30, dieY+24,5,5);
      ellipse(dieX+30, dieY+36,5,5);
      
    }
    
  }

}
