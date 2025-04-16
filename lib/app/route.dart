import 'package:go_router/go_router.dart';
import 'package:instagramultra/app/bottom_navigation.dart';
import 'package:instagramultra/app/splash_screen.dart';
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

    //app
    GoRoute(
        path: '/botomNavigation',
        builder: (context, state) =>
            const BottomNavigation()), //Ботом навигатсия

    GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen()), // Сплеш скрин
  ],
  redirect: (context, state) async {
    if (state.matchedLocation == '/botomNavigation' ||
        state.matchedLocation == '/login') {
      return null;
    }
    return '/splash';
  },
);
