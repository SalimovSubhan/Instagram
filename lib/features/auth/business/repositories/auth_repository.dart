import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';

abstract class AuthRepository {
  Future<AuthEntities?> login(LoginDto dto);

  Future<AuthEntities?> register(RegisterDto dto);
}
