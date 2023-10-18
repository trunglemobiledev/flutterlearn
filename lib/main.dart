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
              backgroundColor: Colors.deepPurpleAccent,
              title: const Text('Flutter basic'),
            ),
            // body: const Center(child: Text('Hello Trung')))),
            body: const MyWidget(true))),
    debugShowCheckedModeBanner: false, // tăt cai nhan debug
  ));
}

// StatelessWidget :
// Tự tạo MyWidget ke thừa StatelessWidget
class MyWidget extends StatelessWidget {
  final bool loading;

  const MyWidget(this.loading, {super.key});

  @override
  Widget build(BuildContext context) {
    // hàm buil() bắc buộc phải có trong StatelessWidget
    // Là 1 hàm càn ghi đè lại
    return loading
        ? const Center(child: Text('State'))
        : const Center(child: CircularProgressIndicator());
  }
}
