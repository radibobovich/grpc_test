import 'package:grpc/grpc.dart';
import 'package:grpc_test/generated/workstation.pbgrpc.dart';
import 'package:args/args.dart';

Future<void> main(List<String> args) async {
  print(args);
  var parser = ArgParser();
  parser.addOption('ip', mandatory: true);
  parser.addOption('command', mandatory: true);
  final parsedArgs = parser.parse(args);
  if (!parsedArgs.wasParsed('ip')) {
    print('missing -ip argument');
    return;
  }
  final ip = parsedArgs['ip'];
  final command = parsedArgs['command'];
  final Iterable<String> arguments = parsedArgs.rest;
  print(arguments);
  final channel = ClientChannel(
    ip,
    port: 50051,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );
  final stub = RemoteTerminalClient(channel);
  try {
    final response = await stub.performCommand(
        RemoteTerminalRequest(command: command, args: arguments));
    print(response.stdout);
  } catch (e) {
    print('Error: $e');
  }
  await channel.shutdown();
}
