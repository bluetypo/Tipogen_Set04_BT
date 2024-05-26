void dibuja9() {
  int numGlitches = 20; // Número de elementos glitch
  float maxDisplacement = 5; // Desplazamiento máximo para el glitch
  float rectWidth = 20; // Ancho de cada rectángulo
  float rectHeight = 5; // Altura de cada rectángulo

  for (int i = 0; i < numGlitches; i++) {
    // Posición aleatoria para el glitch
    float x = random(-rectWidth / 2, rectWidth / 2);
    float y = random(-rectHeight / 2, rectHeight / 2);

    // Desplazamiento aleatorio para el efecto glitch
    float xDisplacement = random(-maxDisplacement, maxDisplacement);
    float yDisplacement = random(-maxDisplacement, maxDisplacement);

    // Color aleatorio para el glitch
    fill(random(255), random(255), random(255));

    // Dibujar el rectángulo del glitch
    rect(x + xDisplacement, y + yDisplacement, rectWidth, rectHeight);
  }
}
