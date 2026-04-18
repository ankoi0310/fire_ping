import 'package:fire_ping/config/router/session_listenable.dart';
import 'package:fire_ping/core/blocs/session/session_cubit.dart';
import 'package:fire_ping/di.dart';
import 'package:fire_ping/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String splash = '/splash';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String home = '/home';
}

final routerConfig = GoRouter(
  initialLocation: AppRoute.home,
  refreshListenable: SessionListenable(sl<SessionCubit>().stream),
  routes: [
    GoRoute(
      path: AppRoute.splash,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoute.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
