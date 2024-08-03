import 'package:go_router/go_router.dart';
import 'package:xo_game/features/login/presentation/view/login_view.dart';
import 'package:xo_game/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  static const String loginView = "/loginView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouter.loginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
