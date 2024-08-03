import 'package:go_router/go_router.dart';
import 'package:xo_game/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
