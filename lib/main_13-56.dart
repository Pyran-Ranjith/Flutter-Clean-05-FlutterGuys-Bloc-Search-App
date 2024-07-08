import 'dart:async';

import 'package:flutter/material.dart';

// import 'examples/stream_example1.dart';
import 'examples/stream_example.dart';
import 'stream/future_async_return.dart';
// import 'stream/stream_async_yield.dart';

/*  */
// void main(List<String> arguments) async {
//   //1. int number = await getNumberFromMethod();
//   int number = await StreamAsyncFuture();
//   print("Number : '$number'");
// }

// void main(List<String> arguments) async {
//   //1. int number = await getNumberFromMethod();
//   StreamAsyncYield().listen((event) {
//   print("Number : '$event'");
//   },);
// }

/* 3. StreamControler */
void main() async {
  StreamController<int> streamController = StreamController();
}

Future getNumberFromMethod(StreamController streamController) async {
  for (int i = 1; i < 11; i++) {
    await Future.delayed(const Duration(seconds: 2));
    streamController.sink.add(event);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(),
      // home: StreamExample1(),
      home: StreamExample(),
    );
  }
}

// Future StreamAsyncFuture() async {
//   for (int i = 1; i < 11; i++) {
//     await Future.delayed(const Duration(seconds: 5));
//     return i;
//     // yield i;
//   }
// }
