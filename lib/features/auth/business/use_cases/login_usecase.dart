import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/business/repositories/login_repository.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart';

class LoginUsecase {
  final LoginRepository repository;
  LoginUsecase({required this.repository});

  Future<AuthEntities?> call({required LoginDto dto}) async {
    return repository.login(dto);
  }
}
