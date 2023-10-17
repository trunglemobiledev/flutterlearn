// Cấu trúc dữ liệu List trong ngôn ngữ Dart

var list1 = []; // Khởi tạo danh sách không gán kiểu dữ liệu phần tử bên trong

List<int> numbers =
    []; // Khởi tạo danh sách có ep kiểu dữ liệu phần tử bên trong (chi them đươc phan tư kieu int)

// Sử dụng đươc các hàm có sẵn như first , last, length , isEmty.... như Enum

void main() {
  // Kiểm tra so phan tử
  // print(list1.length);
  // print(numbers.length);

  // Them phan tử
  list1.add(1);
  numbers.add(1);

  // Them phan tử
  list1.add('name');
  numbers.add(2);

  // list1.forEach((element) {
  //   print(element.runtimeType);
  //   print(element);
  // });

  // Them 1 mãng vao 1 mãng
  list1.addAll(numbers);
  // insert(vitri, giatri) vào mãng
  list1.insert(0, 'insert 0');
  // xóa truyền vào giá trị muốn xóa
  list1.remove(1);
  // xóa truyền vào vi tri muốn xóa
  list1.removeAt(1);
  // và các remove khác ......

  // list1.clear(); // Xóa tat các item
  // list1.reversed; // Đảo các item

  list1.reversed.forEach((element) {
    // print(element.runtimeType);
    print(element);
  });
}
