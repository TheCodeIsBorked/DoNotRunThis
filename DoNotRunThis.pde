int shitStorm;
PrintWriter output;
//int emBiggen = 100000000;
int emBiggen = 5;


void setup() {
  //output = createWriter("positions.txt");
  // Create a new file in the sketch directory
  shitStorm = 1163630;
  //frameRate(10000);
}

void draw() {

  for (int i = 1; i <=emBiggen; i++) {
    nameGen();
    output = createWriter(name + i); //creates a file 
    output.print(new String(new char[shitStorm]).replace("\0", "all I want for Christmas is the pain to stop"));  // multiplies the string somehow. idk. 
    output.flush();  // Writes the remaining data to the file
    output.close(); // Finishes the file
    int s = millis();
    println(i + " at " + s/1000 + " seconds ");
    if ( i == emBiggen) {
      exit();  // Stops the program
    }
  }
}
