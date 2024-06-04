import geomerative.*; 
import processing.pdf.*;
boolean record;


//declara objectos 
PFont myFont;
RFont font;  
String SampleText = "TYPE"; 
RPoint[] pnts;


void setup() { 
  size (800, 400); 
  // inicia la libraria y genera la fuente 
  RG.init(this); 
  font = new RFont("KatahdinRound-Bold.ttf", 220, RFont. LEFT) ; 
  
  // define la densidad de puntos 
  RCommand.setSegmentLength(20); 
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH); 

  if ( SampleText. length () > 0) {
    // genera un grupo de elementos graficos
    RGroup grp;
    // asignalos al texto
    grp = font.toGroup(SampleText);
    // coloca los puntos a lo largo del outline
    pnts = grp.getPoints();
  }
}


void draw() {
  // instrucción para expertar a pdf
  // (Asigna carpeta y nombre del archivo)
  if (record) {
    beginRecord(PDF, "pdf/" +SampleText + "/" + SampleText + "-####.pdf");
  }
  background(#E84D00); // color de fondo
  translate (width/2-310, 250);  // posición del texto
  
  for (int i=0; i<pnts.length; i++) {
    pushMatrix();
    translate(pnts[i].x, pnts[i].y);
    dibuja2();
    popMatrix();
  } 

  if (record) {
    endRecord();
    record = false;
  }
  //saveFrame("GIF/GROW-######.png");  //salva frames en png
} 



// cuando presionas la tecla e exporta como pdf
void keyPressed() {
  if (key=='e') {
    record = true;
  }
}