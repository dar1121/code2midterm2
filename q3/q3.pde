ArrayList<Object> myObjects;

void setup(){
  size(600, 600); 
   myObjects = new ArrayList<Object>();
   myObjects.add(new Object(width/2,height/2));
}

void draw(){
  background(255);
  


  for (int i = 0; i < myObjects.size(); i++) {

   Object myObject = myObjects.get(i);
   PVector gravity = new PVector(0, .1*myObject.mass); 
   PVector wind = new PVector(0.1, 0); 
   myObject.move(); 
   myObject.checkBoundaries(); 
   myObject.display(); 
   myObject.addForce(gravity);
   myObject.addForce(wind);

  } 
   
   
}

void mousePressed(){ 
  //newBall();
  myObjects.add(new Object(mouseX,mouseY));
}
