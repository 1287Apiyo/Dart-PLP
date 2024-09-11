void main() {
  // List Example
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  fruits.add('Orange');
  fruits.remove('Banana');
  print('Fruits: $fruits');

  // Set Example (No duplicate values allowed)
  Set<int> numbers = {1, 2, 3, 3, 4};
  numbers.add(5);
  numbers.remove(1);
  print('Numbers: $numbers');

  // Map Example (Key-value pairs)
  Map<String, int> ageMap = {'Alice': 25, 'Bob': 30};
  ageMap['Charlie'] = 22;
  ageMap.remove('Alice');
  print('Age Map: $ageMap');

  // Iterating through List
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  // Iterating through Set
  for (var number in numbers) {
    print('Number: $number');
  }

  // Iterating through Map
  ageMap.forEach((key, value) {
    print('$key is $value years old.');
  });
}
