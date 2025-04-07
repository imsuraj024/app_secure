import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app_secure_platform_interface.dart';

/// An implementation of [AppSecurePlatform] that uses method channels.
class MethodChannelAppSecure extends AppSecurePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app_secure');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
