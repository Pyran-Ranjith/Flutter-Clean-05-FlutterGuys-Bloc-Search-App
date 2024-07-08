import 'package:flutter/material.dart';

// import 'examples/stream_example1.dart';
import 'examples/stream_example.dart';

void main() {
  runApp(const MyApp());
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

List1(List<String> arguments) async {
  int number = await getNumberFromMethod();
  return number;
}

Future getNumberFromMethod() async {
  for (int i = 1; i < 11; i++) {
    await Future.delayed(const Duration(seconds: 2));
    return i;
  }
}

