byte[] i = null;
byte[] a = null;
byte[] o;
String OLoc = null;

void setup() {
  background(0, 0, 0);
  size(106, 37);
  PImage icon = loadImage("icon.bmp");
  surface.setIcon(icon);
}
void imgSelected(File selection) {
  if (selection==null) {
  } else {
    i = loadBytes(selection.getAbsolutePath());
  }
}
void archSelected(File selection) {
  if (selection==null) {
  } else {
    a = loadBytes(selection.getAbsolutePath());
  }
}
void outSelected(File selection) {
  if (selection==null) {
  } else {
    OLoc = selection.getAbsolutePath();
    if (i != null && a != null && OLoc != null) {
      o = concat(i, a);
      saveBytes(OLoc, o);
    }
  }
}

void draw() {
  background(255, 255, 255);
  fill(255, 255, 255);
  fill(255, 255, 255);
  if(i != null){fill(0,255,0);}
  rect(0, 0, 105, 12);
  fill(255, 255, 255);
  if(a != null){fill(0,255,0);}
  rect(0, 12, 105, 12);
  fill(255, 255, 255);
  rect(0, 24, 105, 12);

  fill(0, 0, 0);
  text("SELECT IMAGE", 8, 11);
  text("SELECT ARCHIVE", 2, 23);
  text("SAVE", 36, 35);
}
void mousePressed() {
  if (mouseY >= 1 && mouseY <= 11 && mouseX >= 1 && mouseX <= 104) {
    selectInput("Select Image", "imgSelected");
  }
  if (mouseY >= 13 && mouseY <= 23 && mouseX >= 1 && mouseX <= 104) {
    selectInput("Select Archive", "archSelected");
  }
  if (mouseY >= 25 && mouseY <= 35 && mouseX >= 1 && mouseX <= 104) {
    selectOutput("Save", "outSelected");
  }
}
