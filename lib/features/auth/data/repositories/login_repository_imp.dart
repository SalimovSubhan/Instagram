import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/data/datasources/login_remote_datasource.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart';
import 'package:instagramultra/features/auth/business/repositories/login_repository.dart';

class LoginRepositoryImp implements LoginRepository {
  final LoginRemoteDatasource datasource;
  LoginRepositoryImp({required this.datasource});

  @override
  Future<AuthEntities?> login(LoginDto dto) {
    return datasource.login(dto: dto);
  }
}
