void dibuja6() {
  int numPoints = 50; // Número de puntos en la curva
  float radius = 10; // Radio de la curva
  float noiseScale = 0.1; // Escala del ruido
  float noiseStrength = 10; // Fuerza del ruido
  
  beginShape();
  for (int i = 0; i <= numPoints; i++) {
    float angle = map(i, 0, numPoints, 0, TWO_PI); // Angulo de cada punto
    float x = cos(angle) * radius;
    float y = sin(angle) * radius;
    
    // Desplazar puntos utilizando ruido
    float noiseVal = noise(x * noiseScale, y * noiseScale);
    float offsetX = cos(angle) * noiseVal * noiseStrength;
    float offsetY = sin(angle) * noiseVal * noiseStrength;
    
    // Vertice de la forma con desplazamiento
    vertex(x + offsetX, y + offsetY);
  }
  endShape(CLOSE);
}
