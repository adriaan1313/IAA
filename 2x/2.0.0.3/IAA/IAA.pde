byte[] i = null;
byte[] a = null;
byte[] o;
String OLoc = null;
int version = 2003;
int latest;

void setup() {
  latest = int(loadStrings("https://adriaan1313.github.io/projects/IAA/latest.txt")[0]);
  background(0, 0, 0);
  size(106, 37);
  surface.setResizable(true);
  if(latest > version){surface.setTitle("Please Update");}
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
  if(i != null){fill(0,255,0);}
  rect(0, 0, width, height/3);
  fill(255, 255, 255);
  if(a != null){fill(0,255,0);}
  rect(0, height/3, width, height/3);
  fill(255, 255, 255);
  rect(0, (height/3)*2, width, height/3);

  fill(0, 0, 0);
  text("SELECT IMAGE", width/2-40, height/6+6);
  text("SELECT ARCHIVE", width/2-49, (height/6)*3+6);
  text("SAVE", width/2-10, (height/6)*5+6);
}
void mousePressed() {
  if (mouseY >= 0 && mouseY <= height/3-1) {
    selectInput("Select Image", "imgSelected");
  }
  if (mouseY >= height/3+1 && mouseY <= (height/3)*2-1) {
    selectInput("Select Archive", "archSelected");
  }
  if (mouseY >= (height/3)*2+1 && mouseY <= height-1) {
    selectOutput("Save", "outSelected");
  }
}
