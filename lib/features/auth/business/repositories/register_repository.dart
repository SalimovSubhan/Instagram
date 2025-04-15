
import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';

abstract class RegisterRepository {
  Future <AuthEntities?> register(RegisterDto dto);
}
