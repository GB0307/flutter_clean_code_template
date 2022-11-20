import 'package:auto_route/auto_route.dart';
import 'routes.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: routes,
)
class $AppRouter {}
