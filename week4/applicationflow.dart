import 'dart:io';

void main() {
  // Step 1: String Manipulation on User Input
  print('Enter your name:');
  String name = stdin.readLineSync()!;

  String reversedName = name.split('').reversed.join();
  int nameLength = name.length;

  // Step 2: Store results in a List
  List<String> results = [];
  results.add('Original Name: $name');
  results.add('Reversed Name: $reversedName');
  results.add('Name Length: $nameLength');

  // Step 3: Save data to a file
  File resultFile = File('results.txt');
  resultFile.writeAsStringSync('Results:\n', mode: FileMode.append);
  for (String result in results) {
    resultFile.writeAsStringSync('$result\n', mode: FileMode.append);
  }

  // Step 4: Log the date and time of entry
  DateTime now = DateTime.now();
  resultFile.writeAsStringSync('Entry made at: $now\n', mode: FileMode.append);

  print('Data saved to results.txt.');
}
