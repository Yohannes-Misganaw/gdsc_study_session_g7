final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
//for finding the maximum number
double findMaximum(List<int> numbers) {
  int max = numbers[0];
  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
  }
  return max.toDouble();
}
//for finding the minimum number
double findMinimum(List<int> numbers) {
  int min = numbers[0];
  for (int num in numbers) {
    if (num < min) {
      min = num;
    }
  }
  return min.toDouble();
}
// for calculating the sum of the numbers
int calculateSum(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  return sum;
}
//to calculate the Average of the numbers
double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  return sum / numbers.length;
}

//displaying the results
void main() {
  print('Maximum: ${findMaximum(numbers)}');
  print('Minimum: ${findMinimum(numbers)}');
  print('Sum: ${calculateSum(numbers)}');
  print('Average: ${calculateAverage(numbers)}');
}
