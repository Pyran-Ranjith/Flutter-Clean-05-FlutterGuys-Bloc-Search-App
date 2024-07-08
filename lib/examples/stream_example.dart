// ignore_for_file: unused_local_variable, dead_code

import 'package:flutter/material.dart';

class StreamExample extends StatelessWidget {
  const StreamExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   body: Center(child: Text(List1.toString() as String)),
    );
  }
}

void main(List<String> arguments) async {
  //1. int number = await getNumberFromMethod();
  getNumberFromMethod().listen((event) {
  print("Number : '$event'");
  },);
}

//1. Future getNumberFromMethod() async {
Stream getNumberFromMethod() async* {
  for (int i = 1; i < 11; i++) {
    await Future.delayed(const Duration(seconds: 2));
    // return i;
    yield i;
  }
}
