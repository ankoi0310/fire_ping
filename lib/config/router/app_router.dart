import 'package:fire_ping/config/router/session_listenable.dart';
import 'package:fire_ping/di.dart';
import 'package:fire_ping/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:fire_ping/features/auth/presentation/pages/sign_in_page.dart';
import 'package:fire_ping/features/auth/presentation/pages/sign_up_page.dart';
import 'package:fire_ping/features/home/presentation/pages/home_page.dart';
import 'package:fire_ping/features/map/presentation/pages/map_page.dart';
import 'package:fire_ping/features/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String splash = '/splash';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String home = '/home';
  static const String map = '/map';

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
        // Stay on splash while initializing
        return null;
      },
      loading: () {
        // Stay on splash while loading
        return null;
      },
      authenticated: (appUser) {
        // If on public pages (sign-in/sign-up), redirect to home
        if (isPublic) {
          return AppRoute.home;
        }
        return null;
      },
      unauthenticated: () {
        // If not on public pages, redirect to sign-in
        if (!isPublic) {
          return AppRoute.signIn;
        }
        return null;
      },
      failure: (_) {
        return AppRoute.signIn;
      },
    );
  },
  routes: [
    GoRoute(
      path: AppRoute.splash,
      builder: (context, state) => const SplashPage(),
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
    GoRoute(
      path: AppRoute.map,
      builder: (context, state) => const MapPage(),
    ),
  ],
);
