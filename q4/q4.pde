// press any key to change states
// mousePressed is  functional in all states
// there is lagging between last two scenes



int n;


void setup() {
  size(600, 600);
  println("scene number: "+(n+1));
  myObject = new Object(); 
  myDobjects = new ArrayList<Dobject>();
  myDobjects.add(new Dobject(width/2,height/2));

}

void draw() {
 switch(n)
   { 
      case 0: 
        scene0();
      break; 
      case 1: 
        scene1();
      break; 
      case 2: 
        scene2();
      break; 
      case 3:
        scene3();
      break;
   }
}  

void keyPressed() {
  if (n<3) {
    n++;
  } else {
    n = 0;
  }
  println("scene number: "+(n+1));
}

void mousePressed() {
  
    if (n >= 3) {
        ellipse(mouseX, mouseY, 50, 50);
        
        TableRow newRow = data.addRow();
        newRow.setFloat("red", random(0,255));
        newRow.setFloat("green", random(0,255));
        newRow.setFloat("blue", random(0, 255));
        saveTable(data, "data/colors.csv");
        
        loadData();
        
    } else if (n < 3 && n > 1) { 
        myDobjects.add(new Dobject(mouseX,mouseY));
    }
}
