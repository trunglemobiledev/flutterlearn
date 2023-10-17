//  Bài 18 - Convert giữa các cấu trúc dữ liệu: List, Maps, Sets, Queue trong Dart

import 'dart:collection';

var numbers = [1, 2, 3];
List<int> list1 = [1, 2, 3];
List<String> list2 = ['tin', 'hoa', 'phuong'];

void main() {
  // Duyet tung phan tu, add tuong ung
  Set<String> set = {};
  list1.forEach((e) {
    set.add('$e');
  });
  print(set);

  // Add tat ca phan tu (Nhung phai cung kieu du lieu)
  Set<String> set2 = {};
  set2.addAll(list2);
  print(set2);

  // Dùng .from
  Set<dynamic> set3 = Set.from(numbers);
  set3.addAll(list2);
  print(set3);

  var q = Queue.from(numbers);

  print(q);

  // Dùng .map
  List<String> strNumber = numbers.map((e) {
    return '$e';
  }).toList();

  print(strNumber);

  Set<String> set4 = numbers.map((e) {
    return '$e';
  }).toSet();
  
  set4.forEach((e) { 
    print(e.runtimeType);
  });
}
