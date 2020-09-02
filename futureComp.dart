import 'dart:async';

main(List<String> args) {
  int number;
  Future future = Future.delayed(Duration(seconds: 5), () => number = 5);
  future.then((value) => print(number));
  print(number);
}
