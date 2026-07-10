import geomerative.*; 
import processing.pdf.*;

boolean shouldRecord;

// Declara objetos 
PFont myFont;
RFont font;  
String SampleText = "T I P O G E N"; 
RPoint[] pnts;

void setup() { 
  size(1400, 600); 
  
  // Inicia la librería y genera la fuente 
  RG.init(this); 
  font = new RFont("FreeSans.ttf", 180, RFont.LEFT); 
  
  // Define la densidad de puntos 
  RCommand.setSegmentLength(5); 
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH); 

  if (SampleText.length() > 0) {
    // Genera un grupo de elementos gráficos
    RGroup grp;
    // Asígnalos al texto
    grp = font.toGroup(SampleText);
    // Coloca los puntos a lo largo del outline
    pnts = grp.getPoints();
  }
}

void draw() {
  // Instrucción para exportar a PDF
  if (shouldRecord) {
    beginRecord(PDF, "pdf/" + SampleText + "/" + SampleText + "-####.pdf");
  }
  frameRate(5);
  background(#E84D00); // Color de fondo
  translate(width/2-600, 250);  // Posición del texto
  
  // Dibuja los puntos en el lienzo
  for (int i = 0; i < pnts.length; i++) {
    pushMatrix();
    translate(pnts[i].x, pnts[i].y);
  
    dibuja4();
    
    popMatrix();
  } 

  if (shouldRecord) {
    endRecord();
    shouldRecord = false;
  }
} 

// Cuando presionas la tecla 'e' exporta como pdf
void keyPressed() {
  if (key == 'e') {
    shouldRecord = true;
  }
}
