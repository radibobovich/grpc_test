import 'package:test/test.dart';
import '../bin/client.dart' as client;

void main() async {
  test('arguments parse', () {
    client.main(['--ip', 'localhost', '--command', 'systeminfo', '/F0']);
  });
}
