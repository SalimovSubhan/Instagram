import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/data/datasources/register_remote_datasource.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';
import 'package:instagramultra/features/auth/business/repositories/register_repository.dart';

class RegisterRepositoryImp implements RegisterRepository {
  final RegisterRemoteDatasource datasource;
  RegisterRepositoryImp({required this.datasource});

  @override
  Future<AuthEntities?> register(RegisterDto dto) async {
    return await datasource.register(dto);
  }
}
