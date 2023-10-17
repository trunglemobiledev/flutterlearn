// Cấu trúc dữ liệu: Enum, Iterable trong ngôn ngữ Dart

enum Person { tin, hoa, phuong }

void main1() {
  print(Person.tin);

  print(Person.tin.name);

  print(Person.tin.hashCode);

  print(Person.values.length); //   Độ dài đối tượng enum được khởi tạo

  print(Person.values[0]); // Lấy phần tử đầu tiên

  print(Person.values.first); // Lấy phần tử đầu tiên

  print(Person.values.isEmpty); // Kiểm tra Emty kiểm tra rỗng

  print(Person.values.isNotEmpty); // Kiểm tra Emty kiểm tra không rỗnga

  //Duyệt qua đối tượng enum bằng hàm forEach
  Person.values.forEach((name) {
    print(name);
  });

  // Cấu trúc switch case

  var name = Person.tin;

  switch (name) {
    case Person.tin:
      print("tin");
      break;

    case Person.hoa:
      print("hoa");
      break;

    case Person.phuong:
      print("phuong");
      break;

    default:
      print("default");
  }
}

// Iterable
var numbers = Iterable.generate(10); // Kiểu Iterable

// Sử dụng đươc các hàm có sẵn như first , last, length .... như Enum

void main() {
  // Kết quả sẽ prin từ 0 đến 10
  // numbers.forEach((number) {
  //   print(number);
  // });

  // Kết quả sẽ prin từ 0 đến 10
  // for (int i = 0; i < numbers.length; i++) {
  //   print(numbers.elementAt(i));
  // }

  // Kiểu for var in
  for (var number in numbers) {
    print(numbers);
  }
}
