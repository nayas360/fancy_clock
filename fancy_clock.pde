PFont Roboto_light_italic;
void setup() {
  //size(300, 300);
  fullScreen();
  noCursor();
}
void draw() {
  background(0);
  noFill();

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(-90));
  float tm_s = radians(map(second(), 0, 60, 0, 360));
  strokeWeight(8);
  stroke(255);
  arc(0, 0, 200, 200, 0, tm_s);
  line(0, 0, 100 * cos(tm_s), 100 * sin(tm_s));
  strokeWeight(6);
  stroke(125, 0, 125);
  arc(0, 0, 200, 200, 0, tm_s);
  line(0, 0, 100 * cos(tm_s), 100 * sin(tm_s));
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(-90));
  float tm_m = radians(map(minute(), 0, 60, 0, 360));
  strokeWeight(8);
  stroke(255);
  arc(0, 0, 180, 180, 0, tm_m);
  line(0, 0, 90 * cos(tm_m), 90 * sin(tm_m));
  strokeWeight(6);
  stroke(125, 200, 125);
  arc(0, 0, 180, 180, 0, tm_m);
  line(0, 0, 90 * cos(tm_m), 90 * sin(tm_m));
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(-90));
  float tm_h = radians(map(hour() % 12, 0, 12, 0, 360));
  strokeWeight(8);
  stroke(255);
  arc(0, 0, 160, 160, 0, tm_h);
  line(0, 0, 80 * cos(tm_h), 80 * sin(tm_h));
  strokeWeight(6);
  stroke(125, 0, 200);
  arc(0, 0, 160, 160, 0, tm_h);
  line(0, 0, 80 * cos(tm_h), 80 * sin(tm_h));
  popMatrix();

  pushMatrix();
  noStroke();
  fill(255);
  translate(width/2, height/2);
  ellipse(0, 0, 10, 10);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  String t = "@Sayan Dutta";
  text(t, - (t.length()/2) * 8, 120); 
  popMatrix();
}