import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app_secure_method_channel.dart';

abstract class AppSecurePlatform extends PlatformInterface {
  /// Constructs a AppSecurePlatform.
  AppSecurePlatform() : super(token: _token);

  static final Object _token = Object();

  static AppSecurePlatform _instance = MethodChannelAppSecure();

  /// The default instance of [AppSecurePlatform] to use.
  ///
  /// Defaults to [MethodChannelAppSecure].
  static AppSecurePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppSecurePlatform] when
  /// they register themselves.
  static set instance(AppSecurePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
