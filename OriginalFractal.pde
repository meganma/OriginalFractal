int myX;
public void setup()
{
  size(500, 400); 
}

public void draw()
{
  background(0);
  myFractal(250, 200, 400);
  mySecondFractal(200, 275, 300);
  mySecondFractal(200, 0, 150);
}

public void myFractal(int myX, int y, int blue)
{
  ellipse(myX, y, blue, blue);
  if(blue > 0)
  {
    stroke(350, 350, 350);
    fill(51,204,255);
  myFractal(myX+blue/2,y, blue/2);
  myFractal(myX-blue/2, y, blue/2);
  }
}

public void mySecondFractal(int myX, int y, int blue)
{
  rect(myX, y, blue, blue);
  if(blue > 0)
  {
    stroke(350, 350, 350);
    fill(51,204,255);
  mySecondFractal(myX+blue/2,y, blue/2);
  mySecondFractal(myX-blue/2, y, blue/2);
  }
}
