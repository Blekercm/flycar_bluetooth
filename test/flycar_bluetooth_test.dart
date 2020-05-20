import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flycar_bluetooth/flycar_bluetooth.dart';

void main() {
  const MethodChannel channel = MethodChannel('flycar_bluetooth');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
