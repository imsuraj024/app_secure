
import 'app_secure_platform_interface.dart';

class AppSecure {
  Future<String?> getPlatformVersion() {
    return AppSecurePlatform.instance.getPlatformVersion();
  }
}
