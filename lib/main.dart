import 'package:flutter/material.dart';
import 'package:flutter_template/di.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MyApp(
      appDependencies: MyAppDependencies(),
    ),
  );
}
