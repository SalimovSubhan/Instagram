import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/business/repositories/auth_repository.dart';
import 'package:instagramultra/features/auth/data/datasources/auth_datasources.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthDatasources datasources;
  AuthRepositoryImp({required this.datasources});

  @override
  Future<AuthEntities?> login(LoginDto dto) async {
    return await datasources.login(dto: dto);
  }

  @override
  Future<AuthEntities?> register(RegisterDto dto) async {
    return await datasources.register(dto);
  }
}
