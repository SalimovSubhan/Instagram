import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/business/repositories/register_repository.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';

class RegisterUsecase {
  final RegisterRepository repository;
  RegisterUsecase({required this.repository});

  Future<AuthEntities?> call(RegisterDto dto) async {
    return await repository.register(dto);
  }
}
