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
            body: const MyWidget2(false))),
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

// StatefulWidget
// Tự tạo MyWidget2 ke thừa StatefulWidget
class MyWidget2 extends StatefulWidget {
  final bool loading;

  const MyWidget2(this.loading, {super.key});

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<MyWidget2> {
  late bool _localLoading; //late là sẽ khởi tạo trễ sau khi khai báo
  @override
  void initState() {
    super.initState();

    // InitState được call sau khi MyWidget2 được khởi tạo và trước hàm build
    // Dùng để khởi tạo giá trị ban đầu
    _localLoading = widget
        .loading; // widget là 1 instance đề truy cập thuộc tính của class StatefulWidget
  }

  @override
  Widget build(BuildContext context) {
    return _localLoading
        ? const Center(child: CircularProgressIndicator())
        : FloatingActionButton(onPressed: onClickButton);
  }

  // Sụ kiện xử lí state _localLoading bawfnf hàm setState
  void onClickButton() {
    setState(() {
      _localLoading = true;
    });
  }
}
