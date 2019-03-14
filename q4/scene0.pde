
float radius;
int scale = 5; 
String state [] = {"GROW", "SHRINK"};
int j;

void scene0() {

  background(0);
 
  if (radius < 0 || radius > width) {
    scale*= -1;
  } 
  
   if (scale < 0) {
    j = 1;
  } else {
    j = 0;
  } 
  
  
  radius = radius + scale;
  fill(255);
  ellipse(width/2, height/2, radius, radius); 
  text (state[j], width*.1, height*.1); 

}
