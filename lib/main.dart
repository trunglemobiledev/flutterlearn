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
        margin: const EdgeInsets.only(left: 50),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: TextButton.icon(
              icon: const Icon(Icons.add, size: 30), // Icon cho button
              onPressed: null, // Set null để disable button
              // onPressed: () => print("Hello"),
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(12.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  // minimumSize: const Size(120, 60),
                  elevation: 30, // Shadows
                  shadowColor: Colors.red.withOpacity(1), // Shadows
                  side: const BorderSide(
                      width: 2, color: Colors.lightGreenAccent), // Màu viền
                  foregroundColor: Colors.greenAccent,
                  backgroundColor: Colors.blueGrey,
                  //   Style khi disable
                  disabledBackgroundColor: Colors.grey),
              label: const Text(
                'Show war',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800),
              )),
        ),
      ),
    );
  }
}
