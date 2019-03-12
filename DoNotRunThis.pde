int shitStorm;
PrintWriter output;
int help;
int emBiggen = 999999999;

void setup() {
  //output = createWriter("positions.txt");
  // Create a new file in the sketch directory
  help = 2;
  shitStorm = emBiggen;
}

void draw() {

  for (int i = 2; i <=shitStorm; i++) {
    output = createWriter("endme" + i);
    output.print(new String(new char[shitStorm*i]).replace("\0", "all I want for Christmas is the pain to stop"));  // Write the coordinate to the file
    output.flush();  // Writes the remaining data to the file
    output.close(); // Finishes the file
    if ( i == shitStorm) {
      exit();  // Stops the program
    }
  }
}
