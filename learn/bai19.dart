//  Bài 19] - Các toán tử cơ bản quan trọng trong ngôn ngữ Dart
// 1. Toán tử số học
// 2. Toán tử so sánh
// 3. Toán tử kiểm tra kiểu
// 4. Toán tử gán
// 5. Toán tử logic
// 6. Toán tử Bitwise & Shift

int a = 10;
int b = 7;
int c = -10;

void main() {
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);

  // Chia lay phan nguyen
  print(a ~/ b);
  // Chia lay phan du
  print(a % b);
  // Tri tuyet doi
  print(c.abs());

  // print(++a); // cộng 1 vào a mới in ra
  print(a++); // in ra rôi mới + 1

  // trừ trừ cũng tương tự vậy

  print(a > b);

  // Kiem tra kiểu
  print(a
      is int); // kiem tra a là int nếu đúng in ra true (Co the kiêm tra kiêu đói tuong ví du user)
  print(a is! int); // kiem tra phủ định mệnh đề trên

  // các toán tử gán += -= *= /=

  // a +=b sẽ bằng a = a + b
  // Tương tự nhưng phép còn lại

  bool check = true;
  bool tested = true;

  // Các phép logic

  print(!check);
  print(check && tested);

  // Toán tử Bitwise & Shift ????? đọc them tai liệu

  print(a & b);
}
