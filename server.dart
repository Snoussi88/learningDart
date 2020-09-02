import 'dart:io' as io;

Future main(List<String> args) async {
  var server = await io.HttpServer.bind(io.InternetAddress.loopbackIPv4, 4041);
  print('listening on localhost:${server.port}');

  await for (io.HttpRequest request in server) {
    request.response.write('hello world');
    await request.response.close();
  }
}
