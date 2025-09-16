import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Enter 6 integers, one by one:");
  for (int i = 0; i < 6; i++) {
    int? currentNumber;
    while (currentNumber == null) {
      stdout.write("Enter integer ${i + 1}: ");
      String? input = stdin.readLineSync();

      if (input != null) {
        try {
          currentNumber = int.parse(input);
        } catch (e) {
          print("That was not a valid number. Please try again.");
        }
      } else {

        print("No input received. Please try again.");
      }
    }
    numbers.add(currentNumber);
  }
  int sumOfOddNumbers = 0;
  for (int numberInList in numbers) {
    if (numberInList % 2 != 0) {
      sumOfOddNumbers = sumOfOddNumbers + numberInList;
    }
  }
  print("\nSum of odd numbers: $sumOfOddNumbers");

  if (numbers.isNotEmpty) {
    int smallestNumber = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] < smallestNumber) {
        smallestNumber = numbers[i];
      }
    }
    print("Smallest number in the list: $smallestNumber");
  } else {
    print("The list is empty, so there is no smallest number.");
  }
}
