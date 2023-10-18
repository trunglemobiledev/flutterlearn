// B1: khái báo import thư viện
import 'package:flutter/material.dart';

// B2 Hàm main hàm chạy đầu tiên
void main() {
  // Hàm runApp(x) là hàm chạy đầu tiên trong main() để run app;
  runApp(MaterialApp(
    // Sử dụng các thành phần giao diện người dùng;
    home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text('Co ban flutter'),
            ),
            body: const Center(child: Text('Hello Trung')))),
    debugShowCheckedModeBanner: false, // tăt cai nhan debug
  ));
}
