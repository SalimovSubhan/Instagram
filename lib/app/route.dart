import 'package:go_router/go_router.dart';
import 'package:instagramultra/app/bottom_navigation.dart';
import 'package:instagramultra/app/splash_screen.dart';
import 'package:instagramultra/features/auth/presentation/screens/login_screen.dart';
import 'package:instagramultra/features/auth/presentation/screens/register_screen.dart';
import 'package:instagramultra/features/home/presentation/screens/home_screen.dart';
import 'package:instagramultra/features/profile/presentation/screens/profile_screen.dart';

final router = GoRouter(
  routes: [
    //app
    GoRoute(
        path: '/botomNavigation',
        builder: (context, state) =>
            const BottomNavigation()), //ботом навигатсия

    GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen()), // сплеш скрин

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
    //Profile
    GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen()), //Экран профилья
  ],
  redirect: (context, state) async {
    if (state.matchedLocation == '/botomNavigation') return null;
    return '/splash';
  },
);
