// Bài 21] - Các cách sử dụng vòng lặp (Loop) trong ngôn ngữ Dart

// 1. for .. loop
// 2. for in .. loop
// 3. for each .. loop
// 4. while
// 5. do - while

// break; continue;

List<int> numbers = [1, 2, 3, 4, 5, 6];

void main() {
// 1
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == 5) {
      continue; // nêu bằng 5 thì bỏ qua không print
    }
    int temp = numbers[i];
    print("for loop $temp");
  }

// 2
  for (int number in numbers) {
    if (number > 4) {
      break; // Dừng vòng lặp tại đây
    }
    print("For in $number");
  }

// 3
  numbers.forEach((e) => print("số này $e"));

  // 4
  int max = 4;
  int test = 1;

  while (test <= max) {
    print('Trung coder');
    test++;
  }

  do {
    print("flutter");
    test++;
    if (test == 3) {
      break;
    }
  } while (test <= max);
}
