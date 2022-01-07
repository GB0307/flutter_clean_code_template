import 'package:cpea/src/features/login/LoginModule.dart';
import 'package:cpea/src/navigation/routes.dart';
import 'package:go_router/go_router.dart';

abstract class RedirectHandler {
  static String? redirect(GoRouterState state) {
    var isLoggedIn = LoginModule.instance.isLoggedIn().data == true;
    if (!isLoggedIn && state.subloc != Routes.logIn) return "/login";
  }
}
