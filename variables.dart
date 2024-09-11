void main() {
  // Define and initialize variables of different types
  int age = 25;
  double height = 5.9;
  String name = "Anne";
  bool isStudent = true;
  List<String> hobbies = ["Salsa", "Reading", "Coding"];

  // Display initialized variables
  print("Age: $age");
  print("Height: $height");
  print("Name: $name");
  print("Is a student: $isStudent");
  print("Hobbies: $hobbies");

  // Test the conversion function
  String numberString = "123";
  convertAndDisplay(numberString);
}

// Function to convert String to int and double
void convertAndDisplay(String numberStr) {
  // Convert String to int and double
  int intValue = int.parse(numberStr);
  double doubleValue = double.parse(numberStr);

  // Convert int to String and double
  String intToString = intValue.toString();
  double intToDouble = intValue.toDouble();

  // Print the results
  print("\nConversions for String '$numberStr':");
  print("String to int: $intValue");
  print("String to double: $doubleValue");
  print("Int to String: $intToString");
  print("Int to double: $intToDouble");
}
