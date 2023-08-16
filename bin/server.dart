import 'package:grpc/grpc.dart';
import 'package:grpc_test/generated/workstation.pbgrpc.dart';
import 'dart:io';
import 'dart:convert';

class TerminalService extends RemoteTerminalServiceBase {
  @override
  Future<RemoteTerminalReply> performCommand(
      ServiceCall call, RemoteTerminalRequest request) async {
    String result = 'no result';
    final List<String> args = request.args.toList();
    await Process.start(request.command, args, runInShell: true)
        .then((process) async {
      final output = <int>[];

      process.stdout.listen((data) {
        output.addAll(data);
      });
      await process.exitCode.then((exitCode) {
        if (exitCode == 0) {
          result = utf8.decode(output, allowMalformed: true);
          print('ready to send result');
        } else {
          print('err');
        }
      });
    });
    return RemoteTerminalReply()..stdout = result;
  }
}

main() async {
  final server = Server.create(
      services: [TerminalService()],
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]));
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
// main() async {
//   String result = '';
//   Process.start('systeminfo', ['/FO', 'LIST']).then((process) {
//     final output = <int>[];

//     process.stdout.listen((data) {
//       output.addAll(data);
//     });
//     process.exitCode.then((exitCode) {
//       if (exitCode == 0) {
//         print(output[1202]);
//         result = utf8.decode(output, allowMalformed: true);
//         print(result);
//       } else {
//         print(exitCode);
//       }
//     });
//   });
// }
