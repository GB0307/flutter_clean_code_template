import 'package:cpea/src/core/interfaces/module.dart';
import 'package:cpea/src/features/login/domain/get_current_user.dart';
import 'package:cpea/src/features/login/domain/is_logged_in.dart';
import 'package:get/get.dart';

class LoginModule extends IModule {
  static LoginModule get instance => Get.find<LoginModule>();

  IsLoggedIn isLoggedIn = IsLoggedIn();
  GetCurrentUser getCurrentUser = GetCurrentUser();

  @override
  Future<void> initialize() async {
    Get.put<LoginModule>(this, permanent: true);
  }
}
