void dibuja5() {
  int numCurves = 2; // Número de curvas por mechón de cabello
  float length = 190; // Longitud de las curvas
  stroke(0); // Color de las curvas
  strokeWeight(1); // Grosor de las curvas
  noFill();

  for (int i = 0; i < numCurves; i++) {
    // Puntos de control de Bezier para generar curvas aleatorias
    float x1 = 0;
    float y1 = 0;
    float x2 = random(-length, length);
    float y2 = random(-length, length);
    float x3 = random(-length, length);
    float y3 = random(-length, length);
    float x4 = random(-length, length);
    float y4 = random(-length, length);

    // Dibujar curva de Bezier
    bezier(x1, y1, x2, y2, x3, y3, x4, y4);
  }
}
