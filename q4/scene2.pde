ArrayList<Dobject> myDobjects;


void scene2() {
  background(255);
  


  for (int i = 0; i < myDobjects.size(); i++) {

   Dobject myDobject = myDobjects.get(i);
   PVector gravity = new PVector(0, .1*myDobject.mass); 
   PVector wind = new PVector(0.1, 0); 
   myDobject.move(); 
   myDobject.checkBoundaries(); 
   myDobject.display(); 
   myDobject.addForce(gravity);
   myDobject.addForce(wind);

  } 
   
   
}



class Dobject{
  PVector pos, vel, accel; 
  float mass; 
  
  Dobject(float x, float y){
    pos = new PVector(x, y); 
    vel = new PVector(0, 0); 
    accel = new PVector(0, 0); 
    mass = random(5, 20); 
  }
  
  void move(){
    vel.add(accel); 
    pos.add(vel); 
    accel.mult(0); 
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x,pos.y,mass*3,mass*3);
  }
  
  void checkBoundaries() {
    if (pos.x > width) {
      pos.x = width;
      vel.x *= -1;
    } else if (pos.x < 0) {
      vel.x *= -1;
      pos.x = 0;
    }
 
    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
  } 
  
  void addForce(PVector force){
      accel.add(force);
  }
}
