ArrayList <Particle> particles;
int numParticles = 1000;
void setup()
{
  size(500, 500);
  frameRate(30);
  particles = new ArrayList <Particle>();
  for (int i = 0; i < numParticles; i++)
  {
    particles.add(new Particle());
  }
  particles.set((int)(Math.random()*numParticles), new OddballParticle());
}
void draw()
{
  background(5, 10, 48);
  particles.add(new Particle());
  for (int i = particles.size()-1; i>=0; i--)
  {
    particles.get(i).move();
    particles.get(i).show();
  }
}
