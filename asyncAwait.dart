Future<String> createOrder() async {
  var order = await fetchOrder();
  return 'creating order: $order';
}

Future<String> fetchOrder() {
  Future<String> order =
      Future.delayed(Duration(seconds: 3), () => 'Latte Coffee');
  return order;
}

main(List<String> args) async {
  print('bonjour');
  print(await createOrder());
}
