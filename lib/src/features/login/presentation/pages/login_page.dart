import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  final List<ProviderConfiguration> providers = const [
    EmailProviderConfiguration(),
    GoogleProviderConfiguration(
      clientId: '...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SignInScreen(providerConfigs: providers);
  }
}
