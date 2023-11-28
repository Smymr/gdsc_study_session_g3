void main() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];

  int maxNumber = findMaximum(numbers);
  int minNumber = findMinimum(numbers);
  int sum = calculateSum(numbers);
  double average = calculateAverage(numbers);

  print('Maximum number: $maxNumber');
  print('Minimum number: $minNumber');
  print('Sum: $sum');
  print('Average: $average');
}

int findMaximum(List<int> numbers) {
  int max = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  return max;
}

int findMinimum(List<int> numbers) {
  int min = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }

  return min;
}

int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  return sum;
}

double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  double average = sum / numbers.length;

  return average;
}
