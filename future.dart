import 'dart:async';

main(List<String> args) {
  Future<int> future = Future.delayed(Duration(seconds: 4));
  future.then((value) => print('hey there'));
  print('hola');
  print('koto');
}
