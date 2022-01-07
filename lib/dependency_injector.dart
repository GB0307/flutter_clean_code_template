import 'package:cpea/firebase_options.dart';
import 'package:cpea/src/core/interfaces/module.dart';
import 'package:cpea/src/features/login/LoginModule.dart';
import 'package:firebase_core/firebase_core.dart';

Future injectDependencies() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await IModule.initializeAll([
    LoginModule(),
  ]);
}
