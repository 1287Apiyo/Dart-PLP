import 'dart:io';

void main() {
  try {
    // Reading from a file
    File inputFile = File('input.txt');
    String inputContent = inputFile.readAsStringSync();
    print('File Content: $inputContent');

    // Writing to a file
    File outputFile = File('output.txt');
    outputFile.writeAsStringSync('This is some new data.\n',
        mode: FileMode.append);
    print('Data written to output.txt');
  } catch (e) {
    print('Error during file operations: $e');
  }
}
