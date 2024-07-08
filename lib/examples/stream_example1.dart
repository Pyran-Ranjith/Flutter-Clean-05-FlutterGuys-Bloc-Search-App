// ignore_for_file: unused_local_variable, dead_code

import 'package:flutter/material.dart';

class StreamExample1 extends StatelessWidget {
  const StreamExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(List1.toString() as String)),
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
