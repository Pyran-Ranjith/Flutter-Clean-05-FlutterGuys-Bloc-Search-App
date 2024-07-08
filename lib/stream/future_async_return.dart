// ignore_for_file: non_constant_identifier_names

Future StreamAsyncFuture() async {
  for (int i = 1; i < 11; i++) {
    await Future.delayed(const Duration(seconds: 5));
    return i;
    // yield i;
  }
}
