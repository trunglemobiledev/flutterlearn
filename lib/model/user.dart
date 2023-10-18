class User {
  // Khai báo thuộc tính

  //  Khi dùng trước tên biến hoạc tên hàm thì biến đó được dùng privite chứ không public được phải sử dụ getter và setter

  late int _id = 0;
  late String _name = 'mặc định';

  User(this._id, this._name);

  @override
  String toString() {
    // Ghi đè hàm tostring()
    // TODO: implement toString
    return '$_id - $_name';
  }

  // hàm nay chi call privite
  void _logInfor() {
    print("Trung func privite");
  }

  void logInfor() {
    print("Trung func public");
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
