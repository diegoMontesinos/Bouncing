
PImage img;
PVector pos, vel;
int c = #9911F0;

void setup () {
  size(600, 600);
  
  pos = new PVector(300, 300);
  vel = PVector.random2D();
  vel.mult(3);
  
  img = loadImage("jake.png");
}

void draw () {
  background(#0285F5);
  
  fill(c);
  noStroke();
  ellipse(pos.x, pos.y, 80, 80);
  image(img, pos.x - img.width * 0.5, pos.y - img.height * 0.5);
  
  pos.add(vel);
  if (pos.x < 0 || pos.x > width) {
    c = color(random(255), random(255), random(255));
    vel.x *= -1;
  }
  
  if (pos.y < 0 || pos.y > height) {
    c = color(random(255), random(255), random(255));
    vel.y *= -1;
  }
}

void mousePressed() {
  vel = PVector.random2D();
  vel.mult(4.5);
}
