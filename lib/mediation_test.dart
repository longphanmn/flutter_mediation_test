import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MediationTest {
  static const MethodChannel _channel = const MethodChannel('mediation_test');

  static void presentTestSuite() async {
    try {
      await _channel.invokeMethod('showTestSuite');
    } on PlatformException catch (e) {
      debugPrint(e.message);
    }
  }
}
