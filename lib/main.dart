import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:tincoder/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      showSemanticsDebugger: false,
      // title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var text = "default";

  // Kiểu await
  Future<String> textFunc2() {
    return Future.delayed(const Duration(seconds: 5), () => "Hello text");
  }

  // Kiểu Completer
  Future<String> textFunc() {
    var value = Completer<String>();
    Future.delayed(
        const Duration(seconds: 2), () => value.complete("Hello text"));
    return value.future;
  }

  onPressed() async {
    textFunc().then((value) {
      setState(() {
        text = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FutureBuilder(
              future: textFunc2(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (snapshot.hasData) {
                  var value = snapshot.data.toString();
                  return Text(value);
                }
                if (snapshot.hasError) {
                  print(snapshot.error);
                }
                return Text("Text");
              },
            ),
          )
          //   Center(
          //     child: Text(
          //       text,
          //       style: const TextStyle(fontSize: 30),
          //     ),
          //   ),
          //   Center(
          //     child: ElevatedButton(
          //         onPressed: onPressed, child: const Text("onPressed")),
          //   )
        ],
      ),
    );
  }
}

//https://www.youtube.com/playlist?list=PLIP1FbDpyHbH4OCLxtHK9KgZ3R7bn_gG7
