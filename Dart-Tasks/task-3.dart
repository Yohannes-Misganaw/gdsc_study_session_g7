import 'dart:io';

class Calculator {
  var a, b;

  Calculator(this.a, this.b);

  Future<void> calculate(String operation) async {
    try {
      var result;
      switch (operation) {
        case '+':
          result = await addition();
          break;
        case '-':
          result = await subtraction();
          break;
        case '*':
          result = await multiplication();
          break;
        case '/':
          result = await division();
          break;
        default:
          throw Exception("Invalid operation, Try again!!!");
      }
      print("The result is: $result");
    } catch (err) {
      print("Error: $err");
    }
  }

  Future<num> addition() async {
    return await Future.delayed(Duration(seconds: 5), () => a + b);
  }

  Future<num> subtraction() async {
    return await Future.delayed(Duration(seconds: 5), () => a - b);
  }

  Future<num> multiplication() async {
    return await Future.delayed(Duration(seconds: 5), () => a * b);
  }

  Future<num> division() async {
    if (b == 0) {
      throw Exception(
          "opps!!! Zero division error! Can't divide a number by zero!");
    } else {
      return await Future.delayed(Duration(seconds: 5), () => a / b);
    }
  }
}

void main() {
  stdout.write("Enter the 1st number: ");
  String? input = stdin.readLineSync();
  num num1 = input != null && input.isNotEmpty ? num.parse(input) : 0;

  print("Enter basic operation : + , - , * , /");
  String? operation = stdin.readLineSync();

  stdout.write("Enter the 2nd number: ");
  String? input2 = stdin.readLineSync();
  num num2 = input2 != null && input2.isNotEmpty ? num.parse(input2) : 0;

  Calculator c = Calculator(num1, num2);
  c.calculate(operation!);
}
