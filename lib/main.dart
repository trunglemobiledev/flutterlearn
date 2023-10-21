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
    // Card :
    return Center(
      child: Container(
        color: Colors.greenAccent,
        margin: const EdgeInsets.only(left: 50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              onPressed: () => print("Hello"),
              style: TextButton.styleFrom(
                  minimumSize: const Size(120, 60),
                  foregroundColor: Colors.greenAccent,
                  backgroundColor: Colors.blueGrey),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Show war',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800),
                ),
              )),
        ),
      ),
    );
  }
}
