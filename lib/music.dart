// Cách khao báo class của mixin và có thể khai báo hàm trừu tượng không cần từ khóa abstract trước mixin

import 'package:tincoder/person.dart';

// Từ khóa 'on' giới hạn sử dụng mixin bất kì


mixin Music on Person{ // 'on' Chi nhưng class kế thừa Person mới có thể sử dụng mixin Music không kế thừa thi không sử dụng được
  void music1();
  void music() {
    print("Print music");
  }
}