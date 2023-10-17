//  Cấu trúc dữ liệu Maps trong ngôn ngữ Dart

var map1 = {};

var map2 = {'id': 1, 'name': 'Lê Minh trung'};

void main() {
  // Kiem tra phan tu mang
  // print(map2);
  // print(map2.length);

  // Thêm phần tử vào maps

  map1['age'] = 20;
  map2['ages'] = "20";

  // add map2 vào map1
  map1.addAll(map2); // trung key thì ghi đè giá trị

  // xóa 1 phần tử
  map1.remove('id');

  // hàm clear giống trong list

  print(" ------------map 2");
  //Duyet map
  map2.forEach((key, value) {
    print("key $key value $value");
  });
  print(" ------------map 1");
  // Duyet map
  map1.forEach((key, value) {
    print("key $key value $value");
  });

  // Lẩy ra 1 phần tử
  print(map1['name']);

  // Kiểm tra key có tồn tại trong maps
  bool checkKey = map1.containsKey('name');
  print(checkKey);
// Kiểm tra gia tri có tồn tại trong maps
  bool checkVal = map1.containsValue(1);
  print(checkVal);
}
