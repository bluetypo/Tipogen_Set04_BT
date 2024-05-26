void dibuja8() {
  int numEllipses = 1; // Número de elipses que se dibujarán
  float baseRadius = 63; // Radio base de las elipses
  float displacement = 40; // Desplazamiento máximo para la fusión
  float angleStep = TWO_PI / numEllipses; // Paso angular entre elipses

  // Configuración de colores y estilos
  stroke(0); // Color de contorno
  strokeWeight(1); // Grosor del contorno
  fill(150, 100); // Color de relleno con transparencia

  for (int i = 0; i < numEllipses; i++) {
    // Calcula la posición de cada elipse
    float angle = i * angleStep;
    float x = cos(angle) * displacement + random(-displacement/2, displacement/2);
    float y = sin(angle) * displacement + random(-displacement/2, displacement/2);
    
    // Dibuja la elipse
    ellipse(x, y, baseRadius * 2, baseRadius * 2);
  }
}
