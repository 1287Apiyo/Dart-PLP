void main() {
  // Current Date and Time
  DateTime now = DateTime.now();
  print('Current DateTime: $now');

  // Formatting Date
  String formattedDate = '${now.day}-${now.month}-${now.year}';
  print('Formatted Date: $formattedDate');

  // Adding/Subtracting days
  DateTime futureDate = now.add(Duration(days: 5));
  print('Date 5 days from now: $futureDate');

  DateTime pastDate = now.subtract(Duration(days: 10));
  print('Date 10 days ago: $pastDate');

  // Calculating Difference between two dates
  Duration difference = futureDate.difference(now);
  print('Difference in days: ${difference.inDays}');
}
