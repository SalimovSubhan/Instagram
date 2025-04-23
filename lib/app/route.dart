import 'package:go_router/go_router.dart';
import 'package:instagramultra/app/bottom_navigation.dart';
import 'package:instagramultra/app/splash_screen.dart';
import 'package:instagramultra/features/auth/presentation/screens/login_screen.dart';
import 'package:instagramultra/features/auth/presentation/screens/register_screen.dart';
import 'package:instagramultra/features/home/presentation/screens/home_screen.dart';
import 'package:instagramultra/features/profile/presentation/screens/follow_screen.dart';
import 'package:instagramultra/features/profile/presentation/screens/profile_screen.dart';

bool isSplashShow = false;

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
    //Profile
    GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen()), //Экран профилья
    //Followers
    GoRoute(
        path: '/followers',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final initialIndex = extra['initialIndex'];
          final userId = extra['userId'];
          return FollowScreen(
            intialIndex: initialIndex,
            myId: userId,
          );
        }), //Экран подписчиков

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
    if (isSplashShow == false) {
      isSplashShow = true;
      return '/splash';
    } else {
      return null;
    }
  },
);
