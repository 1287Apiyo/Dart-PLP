void main() {
  // Checking if a number is positive, negative, or zero
  int number = -5;
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }

  // Checking if a person is eligible to vote
  int age = 20;
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }

  // Switch case for days of the week
  int day = 3; // Example: 3 represents Wednesday
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }

  // For loop to print numbers from 1 to 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // While loop to print numbers from 10 to 1
  int countdown = 10;
  while (countdown >= 1) {
    print(countdown);
    countdown--;
  }

  // Do-while loop to print numbers from 1 to 5
  int count = 1;
  do {
    print(count);
    count++;
  } while (count <= 5);

  // Complex example with list and control flow
  List<int> numbers = [3, 9, 15, 25, 102];

  for (int num in numbers) {
    print("Number: $num");

    // Check if the number is even or odd
    if (num % 2 == 0) {
      print("$num is even.");
    } else {
      print("$num is odd.");
    }

    // Categorize the number using a switch statement
    switch (num) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print("$num is small.");
        break;
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
        print("$num is medium.");
        break;
      default:
        print("$num is large.");
    }
  }
}
