class Particle
{
  double myX, myY, mySpeed, myAngle, myDia;
  int myColor;
  Particle()
  {
    myX = width/2;
    myY = height/2;
    mySpeed = (double)(Math.random())+0.05;
    myAngle = (double)((Math.random()*2*Math.PI));
    myColor = (int)(Math.random()*200);
    myDia = (double)5;
  }
  void move()
  {
    if (mySpeed > 0.2)
    {
      myX += Math.cos(myAngle) * mySpeed;
      myY += Math.sin(myAngle) * mySpeed;
    }
    if (dist((float)width/2, (float)height/2, (float)myX, (float)myY)>100)
    {
      myDia += 0.005;
      myColor += 1;
    }
  }
  void show()
  {
    noStroke();
    fill(myColor, myColor, myColor, myColor);
    ellipse((float)myX, (float)myY, (float)myDia, (float)myDia);
  }
}
