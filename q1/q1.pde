float radius;
int scale = 5; 
String state [] = {"GROW", "SHRINK"};
int n;


void setup(){
  size(500, 500);  
}

void draw(){
  background(0);  
  
  if (radius < 0 || radius > width) {
    scale*= -1;
  } 
  
  if (scale < 0) {
    n = 1;
  } else {
    n = 0;
  } 
  
  radius = radius + scale;

  ellipse(width/2, height/2, radius, radius); 
  text (state[n], width*.1, height*.1); 
  
}
