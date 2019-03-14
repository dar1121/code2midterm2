color bgColor; 
Table data;
float red;
float green;
float blue;

void setup(){
  size(600, 600); 
}

void draw(){
  loadData();
  bgColor = color(red, green, blue); 
  background(bgColor); 
  text("back ground # : " + bgColor, 100, 100); 
  println(red,green,blue);
}


//  loadData gets it own function because
//  programming needs to get the last row twice....
//  once during start up when it needs the last color
//  second during mousePressed when the program 
//  needs to retrieve the latest row generated


void loadData() { 
  data = loadTable("colors.csv", "header");
  int numRows = data.getRowCount();  
  for (int i = 0; i<numRows-1; i++)   {      
    TableRow row = data.getRow(i);
          red = row.getFloat("red");
          green = row.getFloat("green");
          blue = row.getFloat("blue");
  }  
}


//  to make the window reopen with the last color
//  i changed the function of mousePressed to add a new row of
//  random numbers to the dataset 
//  and then setting the numbers as a color
//  instead of creating a random color and then saving the 
//  colors as a new row


void mousePressed() {
  ellipse(mouseX, mouseY, 50, 50);
  
  TableRow newRow = data.addRow();
  newRow.setFloat("red", random(0,255));
  newRow.setFloat("green", random(0,255));
  newRow.setFloat("blue", random(0, 255));
  saveTable(data, "data/colors.csv");
  
  loadData();
}

// i realize that this can be approached in a simpler way, however, i wanted
// the sketch to start off with the old background color already in it,
// so i changed bgColor = color(random(0,255), random(0,255), random(0,255)); 
// to bgColor = color(red, green, blue) and moved it into the draw loop. 
// and created new values for red green and blue whenever the mouse is pressed
