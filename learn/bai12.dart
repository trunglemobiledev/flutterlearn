// Phân biệt kiểu dữ liệu động: var & dynamic
void main() {
  dynamic a; // Khi a được khởi tại dynamic và chưa gán giá trị thì giá trị mặc định là Null không cân dấu ?;
  
  print(a.runtimeType);
  
  print(a);
  
  a = 5; // Gán giá trị là 5 thi sẽ chuyển kiểu dữ liệu thành Int, Vậy gán giá trị kiểu gì thì sẽ thành kiểu dữ liệu ấy
  
  print(a.runtimeType);
  
  print(a);
  
  // Lưu ý khi sử dụng kiểu dynamic phải ghi chú tránh hiểu lầm
}

void main1() {
  dynamic
      b; // Khi b được khởi tại var và chưa gán giá trị thì giá trị mặc định là Null không cân dấu ? Giống dynamyc;
      // Nhưng khi khởi tạo dữ liệu ban đầu không thể gán kiểu dữ liệu khác được nữa

  print(b.runtimeType);

  print(b);

  b = 5; // Gán giá trị là 5 thi sẽ chuyển kiểu dữ liệu thành Int, Vậy gán giá trị kiểu gì thì sẽ thành kiểu dữ liệu ấy

  print(b.runtimeType);

  print(b);

  // Lưu ý khi sử dụng kiểu var phải ghi chú tránh hiểu lầm
}

