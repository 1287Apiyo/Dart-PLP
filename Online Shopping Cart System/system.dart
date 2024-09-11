void main() {
  // Define a list of item prices (representing the shopping cart)
  List<double> cartPrices = [50.0, 30.0, 12.0, 5.0, 120.0];

  // Define the tax rate (optional)
  double taxRate = 0.08; // 8% tax

  // Apply discount using a discount function (e.g., 10% discount)
  List<double> discountedPrices =
      applyDiscount(cartPrices, (price) => price * 0.9);

  // Filter out items below $10 using an anonymous function
  List<double> filteredPrices =
      discountedPrices.where((price) => price >= 10).toList();

  // Calculate total price after tax
  double totalPrice = calculateTotal(filteredPrices, tax: taxRate);

  // Apply special factorial discount based on the number of items in the cart
  int itemCount = filteredPrices.length;
  double factorialDiscount = calculateFactorialDiscount(itemCount);
  totalPrice -= totalPrice * (factorialDiscount / 100);

  // Print final result
  print(
      "Final total price after discounts and tax: \$${totalPrice.toStringAsFixed(2)}");
}

///// Standard Functions /////

// Function to calculate the total price with an optional tax parameter
double calculateTotal(List<double> prices, {double tax = 0.0}) {
  double total = prices.reduce((a, b) => a + b);
  return total + (total * tax);
}

///// Higher-Order Functions /////

// Function to apply a discount to all items in the cart using a discount function
List<double> applyDiscount(
    List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

///// Recursive Functions /////

// Recursive function to calculate factorial discount
double calculateFactorialDiscount(int n) {
  if (n <= 1) return 1; // Base case
  return n * calculateFactorialDiscount(n - 1); // Recursive case
}
