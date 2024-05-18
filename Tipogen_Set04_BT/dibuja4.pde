int x, y, t;

void dibuja4() {
  noStroke();
  fill(255, t*30);
  x = (int)random(-20, 40);
  y = (int)random(-20, 40);
  t = (int)random(4, 20);
  ellipse(x, y, t, t);
  stroke(255);
  line(x, y, t+30, t+30);
}
