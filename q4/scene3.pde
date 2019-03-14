color bgColor; 
Table data;
float red;
float green;
float blue;


void scene3() {
  loadData();
  bgColor = color(red, green, blue); 
  background(bgColor); 
  text("back ground # : " + bgColor, 100, 100); 
  println(red,green,blue);
}

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
