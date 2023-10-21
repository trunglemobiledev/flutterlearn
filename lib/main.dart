// B1: khái báo import thư viện
import 'package:flutter/material.dart';

// B2 Hàm main hàm chạy đầu tiên
void main() {
  // Hàm runApp(x) là hàm chạy đầu tiên trong main() để run app;
  runApp(MaterialApp(
    // Sử dụng các thành phần giao diện người dùng;
    theme: ThemeData(fontFamily: 'UTMAvo' //Set font cho cả dự án
        ),
    home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurpleAccent,
              title: const Text('Flutter basic'),
            ),
            // body: const Center(child: Text('Hello Trung')))),
            body: const MyWidget())),
    debugShowCheckedModeBanner: false, // tăt cai nhan debug
  ));
}

// StatelessWidget :
// Tự tạo MyWidget ke thừa StatelessWidget
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // hàm buil() bắc buộc phải có trong StatelessWidget
    // Là 1 hàm càn ghi đè lại
    return Center(
      child: RichText(
          text: const TextSpan(children: <TextSpan>[
        TextSpan(
            text: "hello",
            style: TextStyle(color: Colors.deepOrange, fontSize: 30)),
        TextSpan(
            text: "đá", style: TextStyle(color: Colors.black12, fontSize: 30)),
        TextSpan(
            text: "last",
            style: TextStyle(color: Colors.black38, fontSize: 30)),
        TextSpan(
            text: "helládsadsado",
            style: TextStyle(color: Colors.blueAccent, fontSize: 30)),
      ])),
    );
  }
}
