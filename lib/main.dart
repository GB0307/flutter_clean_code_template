import 'package:cpea/dependency_injector.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  await injectDependencies();
  runApp(const MyApp());
}
