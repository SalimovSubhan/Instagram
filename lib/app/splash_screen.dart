import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:instagramultra/app/bonnom_navigation.dart';
import 'package:instagramultra/features/auth/presentation/screens/login_screen.dart';
import 'package:instagramultra/core/storage/prefs_service.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PrefsService prefs = PrefsService();

    useEffect(() {
      Future.delayed(const Duration(seconds: 2), () async {
        final String? tiken = await prefs.getToken();
        tiken == null
            ? Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              )
            : Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BonnomNavigation(),
                ),
              );
      });
      return null;
    }, []);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 400,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 160),
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Icon.png'),
                        fit: BoxFit.fill)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 80),
              child: Text(
                'from',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 120),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 20),
                    child: Text(
                      '∞',
                      style: TextStyle(color: Colors.red, fontSize: 30),
                    ),
                  ),
                  Text(
                    'Meta',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
