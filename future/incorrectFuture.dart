String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() {
  Future.delayed(Duration(seconds: 3), () => 'Large Latte');
}

main(List<String> args) {
  print(createOrderMessage());
  //prints Null
}
