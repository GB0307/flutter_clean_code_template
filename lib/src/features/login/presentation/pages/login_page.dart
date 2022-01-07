import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../../LoginModule.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providerConfigs: LoginModule.instance.loginProviders,
    );
  }
}
