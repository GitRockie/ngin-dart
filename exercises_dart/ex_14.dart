/*Exercise 14. Japanese choice.

Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string, exept with the words in backwards order.

My name is Michele => Michele is name My

*/

import 'dart:io';

void main() {
  stdout.write('Please, give a sentence: ');
  String? sentence = stdin.readLineSync();

  reverseSentence(sentence!);
}

void reverseSentence(String sentence) {
  String a = sentence.split(" ").reversed.toList().join(" ");
  print(a);
}
