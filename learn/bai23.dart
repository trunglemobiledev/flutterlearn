// Bài 23
// Cách đặt tên file trong dart đặt bằng chữ thường nếu có nhiều từ nối nhau bằng dấu gạch dưới

class Userbai23 {
  // Khai báo thuộc tính
  // late : có nghĩa la tạm chấp nhận giá trị null và khởi tạo giá trị sau <=> ? sau kiểu dữ liẹu
  // Lưu ý có thể dùng hàm khởi tạo hoạc gán giá trị khởi tạo thằng vào thuộc tính class
  late int id = 0;
  late String name = 'Trung 2000';

  // Contructor kiểu java (khuen dung kieu hàm khoi tạo được gen)
  // User(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }

  // Contructor gen từ android studio : alt + insert
  // Khi lồng {} bọc param lại kiểu argument thi cách su dụng như các bên khai báo hàm không quan trọng thứ tự
  // khi không khởi tạp có thể dùng từ required trước kiểu dữ liệu (nghĩa là bắc buộc phải truyền 2 tham số)
  // Cũng có thể tạo tham số gán trị bắc buộc và không bắc buộc truyền trong hàm khỏi tạo như cách bọc [] 1 số tham số trong hàm bài 22

  // User({ required this.id,required this.name});

  Userbai23({this.id = 1, this.name = 'name'});
  // Name contructor gen từ android studio : alt + insert
  Userbai23.name(this.id, this.name);

  @override
  String toString() {
    // Ghi đè hàm tostring()
    // TODO: implement toString
    return '$id - $name';
  }
}
