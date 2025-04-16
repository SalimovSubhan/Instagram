import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';
import 'package:instagramultra/features/auth/presentation/providers/register_provider.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fromKey = GlobalKey<FormState>();

    final userNameCantroler = useTextEditingController();
    final fullNameCantroler = useTextEditingController();
    final emailCantroler = useTextEditingController();
    final passwordCantroler = useTextEditingController();
    final confirmPasswordCantroler = useTextEditingController();

    final registerState = ref.watch(registerProvider);
    final registerNotifire = ref.read(registerProvider.notifier);
    ref.listen(registerProvider, (previous, next) {
      next.whenOrNull(
        data: (data) {
          if (data?.data != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(data?.data ?? 'Успешно')),
            );
            context.go('/');
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(data?.errors?[0] ?? 'ошибка'),
              ),
            );
          }
        },
        error: (error, _) {},
      );
    });

    return Scaffold(
      body: Form(
        key: fromKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    const SizedBox(width: 80),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/images/Icon.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 120,
                      height: 50,
                      child: Image.asset(
                        'images/Instagram Logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                    controller: userNameCantroler,
                    decoration: const InputDecoration(
                      label: Text('Name'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Поле не должно быть пустым';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                    controller: fullNameCantroler,
                    decoration: const InputDecoration(
                      label: Text('fullName'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Поле не должно быть пустым';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                    controller: emailCantroler,
                    decoration: const InputDecoration(
                      label: Text('email'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Поле не должно быть пустым';
                      }
                      return null;
                    }),
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
                    if (value != null && value.length < 6) {
                      return 'Длина пароль должен быт не мене 6';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: confirmPasswordCantroler,
                  decoration: const InputDecoration(
                    label: Text('confirmPassword'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        passwordCantroler.value.text != value) {
                      return 'Напишите парол правилно';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      if (fromKey.currentState!.validate()) {
                        final dto = RegisterDto(
                          confirmPassword: confirmPasswordCantroler.value.text,
                          email: emailCantroler.value.text,
                          fullName: fullNameCantroler.value.text,
                          password: passwordCantroler.value.text,
                          userName: userNameCantroler.value.text,
                        );

                        registerNotifire.register(dto);
                      }
                    },
                    child: registerState.isLoading
                        ? const CircularProgressIndicator.adaptive()
                        : const Text(
                            'Sing up',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have an account?',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(color: Colors.blue),
                        ),
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
