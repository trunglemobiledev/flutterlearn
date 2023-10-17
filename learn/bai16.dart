//Bài 16 - Cấu trúc dữ liệu Sets trong ngôn ngữ Dart

// Lưu giá trọ giống maps nhưng không có key chỉ chứa giá trị

var numbers = <int>{};

var number2 = <int>{1, 2, 3, 4};

Set<int> number3 = {1, 2, 3, 6};

Set<String> name = {'trung', 'hieu', 'tam'};

Set<dynamic> test = {1, 'hieu', false};

void main() {
  // Thêm phần tử vào sets

  numbers.add(20);
  numbers.add(60);
  numbers.add(1); // Loai bỏ đi các phần tử trùng nhau

  // Thêm nheiu phần tử vào sets
  numbers.addAll(number2);
  numbers.addAll(number3);

  print('--------main run--------');
  test.forEach((element) {
    print('giá trị $element');
    print(element.runtimeType);
  });

  print('--------duyet numbers--------');
  numbers.forEach((element) {
    print('giá trị $element');
    // print(element.runtimeType);
  });

  // Lây 1 vị tri gia tri bat ki
  print(numbers.elementAt(5));

  // Kiem tra gia trị co ton tại trong sets

  var checkVal = numbers.contains(2);

}
