import 'package:go_router/go_router.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';

  static final router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
