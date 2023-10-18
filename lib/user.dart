class User {
  final int id; // id trong trường hợp này chi được set 1 lần duy nhất
  static const String name = 'TRUNG'; // để dùng const trong class thì phải là static và gọi từ vị trí khác bằng cách "User.name"

  const User(this.id); // dùng const trong hàm khởi tạo để xac định vị trí ô nhớ nhằm mục đích tăng hiệu năng ứng dụng do const dược cấp vị trí ô nhớ xác đinh
}