import 'package:gbx_di/gbx_di.dart';
import 'package:flutter_template/core/navigation/app_router.gr.dart';

class _RouterDependency extends Dependencies {
  const _RouterDependency();
  @override
  Future<void> inject() async {
    Injector.register<AppRouter>(AppRouter());
  }
}

class MyAppDependencies extends AppDependencies {
  @override
  List<Dependencies> get dependencies => const [
        _RouterDependency(),
      ];
}
