import 'package:go_router/go_router.dart';
import 'package:instagramultra/core/storage/prefs_service.dart';
import 'package:instagramultra/features/auth/presentation/screens/login_screen.dart';
import 'package:instagramultra/features/auth/presentation/screens/register_screen.dart';
import 'package:instagramultra/features/home/presentation/screens/home_screen.dart';

final router = GoRouter(
  routes: [
    //auth
    GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen()), // Логин

    GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen()), //Регистратсия

    //home
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen()), // Главный экран
  ],
  redirect: (context, state) async {
    final isAuthPage = state.matchedLocation == '/login' ||
        state.matchedLocation == '/register';
    PrefsService prefs = PrefsService();
    final token = await prefs.getToken();
    if ((token == null || token.isEmpty) && !isAuthPage) {
      return '/login';
    }
    if (token != null && token.isNotEmpty && isAuthPage) {
      return '/';
    }
    return null;
  },
);
