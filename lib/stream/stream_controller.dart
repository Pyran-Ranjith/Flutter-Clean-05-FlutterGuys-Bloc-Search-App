// ignore_for_file: non_constant_identifier_names

Future StreamControler(StreamCo
ntroler streamControler) async {
  for (int i = 1; i < 11; i++) {
    await Future.delayed(const Duration(seconds: 2));
    streamControler.si;
    // yield i;
  }
}
