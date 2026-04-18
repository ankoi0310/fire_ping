import 'package:fire_ping/config/router/session_listenable.dart';
import 'package:fire_ping/di.dart';
import 'package:fire_ping/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:fire_ping/features/auth/presentation/pages/sign_in_page.dart';
import 'package:fire_ping/features/auth/presentation/pages/sign_up_page.dart';
import 'package:fire_ping/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String splash = '/splash';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String home = '/home';

  static List<String> publicRoutes = [signUp, signIn];
}

final routerConfig = GoRouter(
  initialLocation: AppRoute.splash,
  refreshListenable: SessionListenable(sl<AuthBloc>().stream),
  redirect: (context, state) {
    final authState = sl<AuthBloc>().state;

    final location = state.matchedLocation;
    final isPublic = AppRoute.publicRoutes.contains(location);

    return authState.when(
      initial: () {
        return location == AppRoute.splash ? null : AppRoute.splash;
      },
      loading: () {
        return location == AppRoute.splash ? null : AppRoute.splash;
      },
      authenticated: (appUser) {
        return isPublic ? AppRoute.home : null;
      },
      unauthenticated: () {
        return isPublic ? null : AppRoute.signIn;
      },
      failure: (_) {
        return AppRoute.signIn;
      },
    );
  },
  routes: [
    GoRoute(
      path: AppRoute.splash,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoute.signUp,
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: AppRoute.signIn,
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: AppRoute.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
