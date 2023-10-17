//Code run dart pad
void main() {
  int? a; //   Null giá trị đặt dấu ?
   int b = 10;
  
  print(b);

  print(a.runtimeType); // Show kiểu giá trị
  
  String company = 'MLG';
  
  String name2 = 'I\' am Lê Minh Trung\n làm culi $company;'; // Kí tự đặc biệt trong chuỗi 
  
  print(name2);
  
  // Chuyên đổi kiểu dữ liệu
  
  String s = "6.2"; // giá trị chuôi phải tương ứng với giá trị double
   
  double d = double.parse(s);
  
  print(d.runtimeType);
}
