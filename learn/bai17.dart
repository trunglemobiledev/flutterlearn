// Bài 17 - Cấu trúc dữ liệu hàng đợi Queue trong ngôn ngữ Dart
import 'dart:collection';

// khai báo

var q = Queue();
var test = ['X', 'Y', 'Z'];
var q2 = Queue<int>(); // ep kieu int
var q3 = Queue<dynamic>(); // ep kieu dynamic nhan tat ca cac kieu
// Hoac
Queue<dynamic> q4 = Queue();

void main() {
  // Them phàn tử vào q

  q.add('A');
  q.add('B');

  print(q);
  print(q.length);

  q.addFirst('C');
  q.addLast('D');

  q.addAll(test);

  q.remove('Y');
  q.removeFirst();

  print(" ----------------- Duyệt q ---------------");
  q.forEach((e) {
    print(e);
  });
}
