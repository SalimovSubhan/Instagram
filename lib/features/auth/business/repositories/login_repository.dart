import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart';

abstract class LoginRepository {
 Future <AuthEntities?> login(LoginDto dto);
}