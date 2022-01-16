import java.util.Scanner;

//
// Problem 1
//
// Assumptions: valid input, consisting of 0-9 or '-' characters
//
// Usage: enter valid input through STDIN separated by newline
//
// Loops through the input string backwards, converting each individual
//   character to the ASCII equivalent value to find each individual digits'
//   decimal digit value. Multiplies digit value by place value. Sums results.
//
class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    
    while (scanner.hasNextLine()) {
      long number = 0;
      String input = scanner.nextLine();

      long place = 1;
      for (int i = 0; i < input.length(); i++) {
        int ascii = input.charAt(input.length()-i-1);
        if (ascii == 45) {   // Minus
          number = -number;
        } else {             // Digit
          int value = ascii - 48;
          number = number + place * value;
        }
        place = place * 10;
      }

      System.out.println("Converted Integer: " + number);
    }
  }
}
