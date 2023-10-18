// Bài 20 - Các biểu thức và ký hiệu đặc biệt trong ngôn ngữ Dart
var check;
var name;
void main() {
  // if (check == null) {
  //   name = 'Defaulte';
  // } else {
  //   name = check;
  // }

  // Bieu thuc dieu kien (Toan tu 3 ngoi)
  name = (check == null) ? 'Default' : check;

  print(name);

  name = check ?? 'Default';

  print(name);

  List<int> numbers = [];

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);

  numbers..add(1)..add(2); // Cascades Gần giống spreat operator js dùng thêm vào mãng

  // numbers.forEach((element) {
  //   print(element);
  // });

  // kiểu => 

  numbers.forEach((element) => print(element)); // Gần giống online func, arrows func js (ở đây thường dùng cho 1 action thực hiện 1 hành động)
}
