// Tính kế thừa (extends) & tính trừa tượng (abstract ) trong ngôn ngữ Dart

import 'package:tincoder/people.dart';
import 'package:tincoder/person.dart';

class User extends People {
  int id = 0;
  String name = '';

  // User(this.id, this.name) : super(18); // super là khơi tạo thuocn tinh cho lop cha có ham khoi tao yeu cầu (ke thua tu Person)
   User(this.id, this.name) ; // super là khơi tạo thuocn tinh cho lop cha có ham khoi tao yeu cầu


  void lohInfor() {
    // print('$id - $name - $age'); // Thuộc tính age được k thưa từ lớp cha person
    print('$id - $name');
  }

  @override
  void func1() { // Hàm này bắc buộc ghi đè
    // TODO: implement func1
    print("override func1");
  }

  @override
  void func2() {
    // TODO: implement func2
    super.func2();
    print("override func2");
  }
}
