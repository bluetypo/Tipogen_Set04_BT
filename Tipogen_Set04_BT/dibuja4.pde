int x, y, t;

void dibuja4() {
  noStroke();
  fill(255, t*30);
  x = (int)random(-10, 20);
  y = (int)random(-10, 20);
  t = (int)random(4, 20);
  ellipse(x, y, t, t);
  stroke(255);
  line(x, y, t+50, t+50);
}
