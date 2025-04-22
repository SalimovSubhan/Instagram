import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';
import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart';
import 'package:instagramultra/features/auth/data/models/register_dto.dart';

class AuthDatasources {
  LogService log = LogService();
  final DioService dio = DioService();

  Future<AuthEntities?> login({required LoginDto dto}) async {
    final url = Apiendoint.account(AccountEndpoint.LOGIN);
    final body = {
      'userName': dto.userName,
      'password': dto.password,
    };
    final response = await dio.post(url: url, istoken: false, body: body);

    if (response.statusCode == 200) {
      log.info(
          'Login saccesfully : response.statusCode = ${response.statusCode}');
    } else {
      log.error(
          'Login not saccesfully : response.statusCode = ${response.statusCode} : ${response.data}');
    }
    print(response.data);
    return AuthEntities.fromJson(response.data);
  }

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
