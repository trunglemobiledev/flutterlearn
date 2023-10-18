import 'package:tincoder/user.dart';

class MyUser extends User {
  MyUser(super.id, super.name); // Phải khởi tạo hàm này vì user có extension

  logInfor() {
    logExtension(); // hàm này kế thừa từ extension của user
  }
}