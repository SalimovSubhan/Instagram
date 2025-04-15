import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/business/use_cases/register_usecase.dart';
import 'package:instagramultra/features/auth/data/datasources/register_remote_datasource.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';
import 'package:instagramultra/features/auth/data/repositories/register_repository_imp.dart';
import 'package:instagramultra/core/network/dio_service.dart';

final dioProvider = Provider((ref) => DioService());
final registerRemoteDatasourceProvider =
    Provider((ref) => RegisterRemoteDatasource(dio: ref.read(dioProvider)));
final repositoryProviderImp = Provider((ref) => RegisterRepositoryImp(
    datasource: ref.read(registerRemoteDatasourceProvider)));
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
