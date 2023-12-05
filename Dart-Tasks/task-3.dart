import 'dart:io';
import 'dart:async';

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ZeroDivisionError();
      //I tried to run it on Dartpad.dev but it couldn't recognize the ZeroDivisonError
    }
    return a / b;
  }
}

void main() async {
  try {
    var calculator = Calculator();

    // To get user input for two numbers
    print('Enter the first number:');
    var a = double.parse(stdin.readLineSync());
    print('Enter the second number:');
    var b = double.parse(stdin.readLineSync());
    //i had difficulty in being able to use "stdin" this too was not recognized by Dartpad.dev

    var sum = calculator.add(a, b);
    var difference = calculator.subtract(a, b);
    var product = calculator.multiply(a, b);
    var quotient = calculator.divide(a, b);

    // Delay for 5 seconds before printing the result
    await Future.delayed(Duration(seconds: 5));

    // Printing the result for all operations
    print('Sum: $sum');
    print('Difference: $difference');
    print('Product: $product');
    print('Quotient: $quotient');
  } catch (e) {
    print('Error: $e');
  }
}
