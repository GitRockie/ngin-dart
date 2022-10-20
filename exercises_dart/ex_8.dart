/*Exercise 8
GAME Rock-Paper-Scissors vs Computer
*/

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print(
      'Welcome to the game "Rock-Paper-Scissors"!\nType "exit" to stop the game');
  final random = Random();

  //Rules
  Map<String, String> rules = {
    'rock': 'scissors',
    'scissors': 'paper',
    'paper': 'rock'
  };

  //Initial score
  int user = 0;
  int comp = 0;

  //Options for computer to choose
  List<String> options = ['rock', 'scissors', 'paper'];

  //Game
  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write('Please choose: Rock, Paper or Scissors: ');
    String userChoice = stdin.readLineSync()!.toLowerCase();

    if (userChoice == "exit") {
      print('\nYou: $user Computer: $comp\n See you soon! Bye Bye!');
      break;
    }

    if (!options.contains(userChoice)) {
      print('Incorrect choice. Try again!');
      continue;
    } else if (compChoice == userChoice) {
      print('Seems like we have a tie!');
    } else if (rules[compChoice] == userChoice) {
      print('Computer wins! $compChoice vs $userChoice');
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print('You win: $userChoice vs $compChoice');
      user += 1;
    }
  }
}
