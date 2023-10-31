// Task 2: Identifying Deficient, Perfect, or Abundant Numbers
import 'dart:io';


void main() {
  try {
    // Prompt the user to enter an integer
    stdout.write("Enter an integer: ");
    int userInput = int.parse(stdin.readLineSync()!);

    // Classify the user's input and print the result
    String result = classifyNumber(userInput);
    print("$userInput is classified as a $result.");
  } on FormatException {
    print("Invalid input. Please enter a valid integer.");
  }
}


// Function to classify a number as deficient, perfect, or abundant
String classifyNumber(int num) {
  if (num < 1) {
    return "Please enter a positive integer.";
  }

  // Calculate the sum of divisors
  int divisorSum = 0;
  for (int i = 1; i < num; i++) {
    if (num % i == 0) {
      divisorSum += i;
    }
  }

  // Classify the number based on its divisor sum
  if (divisorSum < num) {
    return "Deficient number";
  } else if (divisorSum == num) {
    return "Perfect number";
  } else {
    return "Abundant number";
  }
}

