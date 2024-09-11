void main() {
  String firstName = 'Anne';
  String lastName = 'Apiyo';

  // String Concatenation
  String fullName = firstName + ' ' + lastName;
  print('Full Name: $fullName');

  // String Interpolation
  print('Welcome, $fullName!');

  // Substring Extraction
  String subName = fullName.substring(0, 4); // Extract 'Anne'
  print('Extracted Substring: $subName');

  // Case Conversion
  print('Uppercase: ${fullName.toUpperCase()}');
  print('Lowercase: ${fullName.toLowerCase()}');

  // Reverse the String
  String reversedName = fullName.split('').reversed.join();
  print('Reversed Name: $reversedName');

  // Count Length of String
  print('Length of Name: ${fullName.length}');
}
