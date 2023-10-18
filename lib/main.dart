// B1: khái báo import thư viện
import 'package:flutter/material.dart';

// B2 Hàm main hàm chạy đầu tiên
void main() {
  // Hàm runApp(x) là hàm chạy đầu tiên trong main() để run app;
  runApp(const MaterialApp(
    // Sử dụng các thành phần giao diện người dùng;
    home: Text('Hello Trung'),
  ));

}
