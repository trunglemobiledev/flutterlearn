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
      child: ElevatedButton.icon(
          icon: const Icon(Icons.add),
          onPressed: () => print("object"),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent,
              foregroundColor: Colors.green,
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Colors.orange.withOpacity(1),
              elevation: 10,
              side: const BorderSide(width: 4, color: Colors.amberAccent),
              minimumSize: const Size(60, 50)),
          label: const Text(
            "hello",
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 30,
                fontWeight: FontWeight.w800),
          )),
    );
  }
}
