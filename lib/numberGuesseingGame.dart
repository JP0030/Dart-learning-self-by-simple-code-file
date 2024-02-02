// ignore_for_file: file_names

import 'dart:math';
import 'dart:io';

void main() {
  // Generate a random number between 1 and 100
  int secretNumber = Random().nextInt(100) + 1;

  // Initialize variables
  int guessCount = 0;
  bool guessedCorrectly = false;

  // Start the game loop
  while (!guessedCorrectly) {
    // Get the user's guess
    print("Enter your guess (1-100): ");
    int guess = int.parse(stdin.readLineSync()!);

    // Check if the guess is correct
    if (guess == secretNumber) {
      guessedCorrectly = true;
      guessCount++;
      print("Congratulations! You guessed the number in $guessCount attempts.");
    } else if (guess < secretNumber) {
      guessCount++;
      print("Your guess is too low. Try again.");
    } else {
      guessCount++;
      print("Your guess is too high. Try again.");
    }
  }
}