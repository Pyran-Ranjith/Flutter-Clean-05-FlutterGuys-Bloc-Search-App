import 'dart:async';

// // 1. Future, async, return
// // Output: Number : '1'
// // Note: though list contains more than one entries
// // output shwes only fist entry which means something wrong !

// void main(List<String> arguments) async {
//   int number = await getNumberFromMethod();
//   print("Number : '$number'");
// }

// Future getNumberFromMethod() async {
//   for (int i = 1; i < 11; i++) {
//     await Future.delayed(const Duration(seconds: 2));
//     return i;
//   }
// }
// -------------------------------------------------------
// 2. Stream, async*, yield
// Output:
// Number : '1'
// Number : '2'
// Number : '3'
// ...
// Number : '10'
// Note: output shwos all entries

// void main(List<String> arguments) async {
//   getNumberFromMethod().listen(
//     (event) {
//       print("Number : '$event'");
//     },);
// }

// Stream getNumberFromMethod() async* {
//   for (int i = 1; i < 11; i++) {
//     await Future.delayed(const Duration(seconds: 2));
//     yield i;
//   }
// }
// -------------------------------------------------------
// 3. StreamControler
// Output:
// Number : '1'
// Number : '2'
// Number : '3'
// ...
// Number : '10'
// Note: output shwos all entries

void main() async {
  StreamController <int> streamController = StreamController();
  getNumberFromMethod3(streamController);
  streamController.stream.listen((event) {
    print("Number : '$event'");
  });
}

Future getNumberFromMethod3(StreamController streamController) async {
  for (int i = 1; i < 11; i++) {
    await Future.delayed(const Duration(seconds: 2));
    return i;
  }
}
