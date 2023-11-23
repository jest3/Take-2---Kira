ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
//Go backward through the ArrayList
  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle p = particles.get(i);
    
    // Update and display the particle
    p.update();
    p.display();
    
    // Remove the particle if it's off the bottom of the screen
    if (p.isOffScreen()) {
      particles.remove(i);
    }
  }

  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
