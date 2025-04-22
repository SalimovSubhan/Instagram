import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/business/use_cases/login_usecase.dart';
import 'package:instagramultra/features/auth/data/datasources/auth_datasources.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart';
import 'package:instagramultra/features/auth/data/repositories/auth_repository_imp.dart';

// Dependency Injection
final datasourceProvider = Provider((ref) => AuthDatasources());
final repositoryProviderImp = Provider(
    (ref) => AuthRepositoryImp(datasources: ref.read(datasourceProvider)));
final loginUsecaseProvider = Provider(
    (ref) => LoginUsecase(repository: ref.read(repositoryProviderImp)));

// AsyncNotifier

class LoginNotifire extends AsyncNotifier<AuthEntities?> {
  @override
  FutureOr<AuthEntities?> build() {
    return null;
  }

  Future login({required LoginDto dto}) async {
    state = const AsyncLoading();
    try {
      final login = ref.read(loginUsecaseProvider);
      final response = await login.call(dto: dto);
      state = AsyncData(response);
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }
}

final loginProvider =
    AsyncNotifierProvider<LoginNotifire, AuthEntities?>(LoginNotifire.new);
