import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/business/use_cases/register_usecase.dart';
import 'package:instagramultra/features/auth/data/datasources/auth_datasources.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';
import 'package:instagramultra/features/auth/data/repositories/auth_repository_imp.dart';

// Dependency Injection
final datasourceProvider = Provider((ref) => AuthDatasources());
final repositoryProviderImp = Provider(
    (ref) => AuthRepositoryImp(datasources: ref.read(datasourceProvider)));
final registerUsecaseProvider = Provider(
    (ref) => RegisterUsecase(repository: ref.read(repositoryProviderImp)));

class RegisterNotifire extends AsyncNotifier<AuthEntities?> {
  @override
  FutureOr<AuthEntities?> build() {
    return null;
  }

  Future register(RegisterDto dto) async {
    state = const AsyncLoading();
    try {
      final register = ref.read(registerUsecaseProvider);
      final response = await register.call(dto);
      state = AsyncData(response);
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }
}

final registerProvider = AsyncNotifierProvider<RegisterNotifire, AuthEntities?>(
  () => RegisterNotifire(),
);
