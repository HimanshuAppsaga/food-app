import 'package:go_router/go_router.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/history_screen.dart';
import 'screens/product_detail_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String cart = '/cart';
  static const String profile = '/profile';
  static const String history = '/history';
  static const String productDetail = '/product_detail';

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
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: cart,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: profile,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: history,
        builder: (context, state) => const HistoryScreen(),
      ),
      GoRoute(
        path: productDetail,
        builder: (context, state) => const ProductDetailScreen(),
      ),
    ],
  );
}
