import 'package:fire_ping/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String home = '/home';
}

final routerConfig = GoRouter(
  initialLocation: AppRoute.home,
  routes: [
    GoRoute(
      path: AppRoute.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
