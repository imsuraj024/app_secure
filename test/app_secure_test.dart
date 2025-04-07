import 'package:flutter_test/flutter_test.dart';
import 'package:app_secure/app_secure.dart';
import 'package:app_secure/app_secure_platform_interface.dart';
import 'package:app_secure/app_secure_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAppSecurePlatform
    with MockPlatformInterfaceMixin
    implements AppSecurePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AppSecurePlatform initialPlatform = AppSecurePlatform.instance;

  test('$MethodChannelAppSecure is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAppSecure>());
  });

  test('getPlatformVersion', () async {
    AppSecure appSecurePlugin = AppSecure();
    MockAppSecurePlatform fakePlatform = MockAppSecurePlatform();
    AppSecurePlatform.instance = fakePlatform;

    expect(await appSecurePlugin.getPlatformVersion(), '42');
  });
}
