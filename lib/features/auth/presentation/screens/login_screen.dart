import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart';
import 'package:instagramultra/features/auth/presentation/providers/login_provider.dart';
import 'package:instagramultra/core/storage/prefs_service.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PrefsService prefs = PrefsService();
    final fromKay = GlobalKey<FormState>();

    final nameCantroler = useTextEditingController();
    final passwordCantroler = useTextEditingController();

    final loginState = ref.watch(loginProvider);
    final loginNotifire = ref.read(loginProvider.notifier);
    ref.listen(
      loginProvider,
      (previous, next) {
        next.whenOrNull(
          data: (data) async {
            if (data == null) return;
            if (data.data != null) {
              await prefs.saveToken(data.data!);
              if (!context.mounted) return;
              context.go('/botomNavigation');
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(data.errors?[0] ?? 'ошибка'),
                ),
              );
            }
          },
          error: (error, stackTrace) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$error'),
              ),
            );
          },
        );
      },
    );
    return Form(
      key: fromKay,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 170,
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/images/Icon.png'),
                ),
                const SizedBox(
                  height: 90,
                ),
                TextFormField(
                  controller: nameCantroler,
                  decoration: const InputDecoration(
                    label: Text('Name'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'пополни этого поля и имя должен быть болше 4 калима';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordCantroler,
                  decoration: const InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'пополни этого поля';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (fromKay.currentState!.validate()) {
                          LoginDto dto = LoginDto(
                              password: passwordCantroler.value.text,
                              userName: nameCantroler.value.text);
                          loginNotifire.login(dto: dto);
                        }
                      },
                      child: loginState.isLoading
                          ? const CircularProgressIndicator.adaptive()
                          : const Text(
                              'Войти',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Забыли пароль',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 160,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: () {
                        context.push('/register');
                      },
                      child: const Text(
                        'Создать новый аккаунт',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 140),
                  child: Row(
                    children: [
                      Text(
                        '∞',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Meta',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
