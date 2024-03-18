class OddballParticle extends Particle//inherits from Particle
{
  int myR, myG, myB, myRadius, myT;
  OddballParticle()
  {
    super();
    myR = (int)(Math.random()*255);
    myG = (int)(Math.random()*255);
    myB = (int)(Math.random()*255);
    myDia = (int)(Math.random() * 7)+7;
    myRadius = (int)(Math.random()*190)+10;
    myT = 0;
  }
  void move()
  {
    myX = width/2 + myRadius*Math.cos(myT) ;
    myY = height/2 + myRadius*Math.sin(myT) ;
    myT+=2*Math.PI;

    if (dist((float)width/2, (float)height/2, (float)myX, (float)myY)>100)
    {
      myDia += 0.005;
      myColor += 1;
    }
  }
  void show()
  {
    fill(myR, myG, myB, 255);
    ellipse((float)myX, (float)myY, (float)myDia, (float)myDia);
  }
}
