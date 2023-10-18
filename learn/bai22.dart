// Bài 22] - Các cách khai báo hàm (function) trong ngôn ngữ Dart

void main() {
  logInfor();
  logInfor2();
  logName("trung");
  print(tinhtong(6, 5));
  check(5);
  check3(a: 2, b: 4);
  check4(a: 2);
}

void logInfor() {
  print("trung coder");
}

void logInfor2() => print("trung coder 2");

void logName(String name) {
  print(name);
}

int tinhtong(int a, int b) {
  return a + b;
}

// Option các tham số có thể truyền hoạc không truyền

void check(int a, [int? b, int? c]) {
  // Trong trường hợp này b va c có the không truyền
  print(a);
  print(b);
  print(c);
}

void check3({int? a, int? b, int? c}) {
  // Truyền vào bat ki vi tri nao param trên hàm
  print("check 3");
  print(a);
  print(b);
  print(c);
}

void check4({int? a = 4, int? b = 5, int? c = 6}) {
  // Truyền vào bat ki vi tri nao param trên hàm và khoi tạo sẵn giá trị từ param,và có thể truyền từ hàm để cập nhật lại
  print("check 4");
  print(a);
  print(b);
  print(c);
}

// 