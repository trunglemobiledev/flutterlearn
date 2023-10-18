// B1: khái báo import thư viện
import 'package:flutter/material.dart';

// B2 Hàm main hàm chạy đầu tiên
void main() {
  // Hàm runApp(x) là hàm chạy đầu tiên trong main() để run app;
  runApp(MaterialApp(
    // Sử dụng các thành phần giao diện người dùng;
    theme: ThemeData(
      fontFamily: 'UTMAvo' //Set font cho cả dự án
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
    return const Text(
      ' Nếu ai muốn ủng hộ mình, thì Donate cho mình qua thông '
      'tin bên dưới nhé ,  Nếu ai muốn ủng hộ mình, thì Donate c'
      'ho mình qua thông tin bên dưới nhé Nếu ai muốn ủng hộ mình, '
      'thì Donate cho mình qua thông tin bên dưới nhé',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.justify,
      maxLines: 4,
      overflow: TextOverflow.fade,
      style: TextStyle(
          // backgroundColor: Colors.deepOrange,
          color: Colors.deepPurple,
          fontSize: 15,
          fontWeight: FontWeight.w700,
          // fontStyle: FontStyle.italic,
          letterSpacing: 0.2,
          wordSpacing: 3,
          decoration: TextDecoration.none,
          // fontFamily: 'Times New Roman'
      ),
    );
  }
}
