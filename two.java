import java.util.Scanner;

//
// Problem 2
//
// Usage: enter input through STDIN separated by newline
//
// Loops through each character and gathers the ASCII value. Checks whether any
//   character is between 0 and 9 ASCII. Returns true if any is true. Returns
//   false if none is true.
//
class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    
    while (scanner.hasNextLine()) {
      String input = scanner.nextLine();

      boolean has_int = false;
      for (int i = 0; i < input.length(); i++) {
        int ascii = input.charAt(i);
        if (ascii >= 48 && ascii <= 57) {
          has_int = true;
          break;
        }
      }

      System.out.println(has_int);  
    }
  }
}
