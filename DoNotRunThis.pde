
PrintWriter output;

void setup() {
  //output = createWriter("positions.txt");
  // Create a new file in the sketch directory
}

void draw() {
  for (int i = 0; i <500000; i++) {
    output = createWriter("all I want for Christmas is the pain to stop" + i);
    output.println(mouseX);  // Write the coordinate to the file
  }
}

void keyPressed() {
  output.flush();  // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit();  // Stops the program
}
