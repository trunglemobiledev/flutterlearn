// Sử dụng Mixins (with) trong lập trình Flutter (từ khóa with) không phải quan hệ kế thừa
// Mixin cũng dùng được cho lớp trừu tượng và hàm trừu tượng
// Mixin with được với nhiều class (hữu dụng khi dart không dùng được đa kế thừa)

// Từ khóa 'on' giới hạn sử dụng mixin bất và 'on' chỉ sử dụng được kèm với từ khóa mixin

// Tìm hiểu về extension trong lập trình Flutter

// extension : viết phần mở rộng cho class

import 'package:tincoder/football.dart';
import 'package:tincoder/music.dart';
import 'package:tincoder/person.dart';
import 'package:tincoder/readbook.dart';

class User extends Person with Football, ReadBook, Music {
  // Kế thừa Person để sử dụng mixin Music do mixin Music được 'on giới hạn với Person class'
  int id = 0;
  String name = '';

  User(this.id, this.name);

  void logFavorite() {
    logFootball();
  }

  @override
  void play() {
    // TODO: implement
    print('override play Football');
  }

  @override
  void music1() {
    // TODO: implement music1
  }
}

extension MyExtension on User {
  void logExtension() {
    print("logExtension");
  }
}
