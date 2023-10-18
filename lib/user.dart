import 'package:tincoder/address.dart';
import 'package:tincoder/city.dart';
import 'package:tincoder/people.dart';
import 'package:tincoder/person.dart';

// trong dart dùng extend chi kế thừa được từ 1 class không thể nào đa ke thừa
// Dùng  Interfaces (implements) Tìm hiểu về Interfaces (implements) trong ngôn ngữ Dart
// implements mặc dù không phải hàm trừu tượng nhung van phai bac buoc ghi đè (vi du showCity)  và nên implements lớp trừu tượng, hàm trừu tượng để ghi đè lại method lại

class User implements City, Address{
  int id = 0;
  String name = '';

  User(this.id, this.name);

  @override
  void showCity() {
    // TODO: implement showCity
    print("override showCity");
  }

  @override
  void func1() {
    // TODO: implement func1
    print("override func1");
  }

  @override
  void showAdress() {
    // TODO: implement showAdress
    print("override showAdress");
  }
}
