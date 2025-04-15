import 'package:instagramultra/core/utils/log_service.dart';
import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';
import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';

class RegisterRemoteDatasource {
  LogService log = LogService();
  final DioService dio;
  RegisterRemoteDatasource({required this.dio});

  Future<AuthEntities?> register(RegisterDto dto) async {
    final Map<String, dynamic> body = {
      'userName': dto.userName,
      'fullName': dto.fullName,
      'email': dto.email,
      'password': dto.password,
      'confirmPassword': dto.confirmPassword,
    };
    final String url = Apiendoint.account(AccountEndpoint.REGISTER);
    final response = await dio.post(url: url, body: body, istoken: false);
    if (response.statusCode == 200) {
      log.info(
          'Register saccesfully : response.statusCode = ${response.statusCode}');
    } else {
      log.error(
          'Register not saccesfully : response.statusCode = ${response.statusCode} : ${response.data}');
    }
    return AuthEntities.fromJson(response.data);
  }
}
