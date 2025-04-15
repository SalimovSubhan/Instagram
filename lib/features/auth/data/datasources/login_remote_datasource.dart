import 'package:instagramultra/core/utils/log_service.dart';
import 'package:instagramultra/features/auth/business/entities/auth_entities.dart';
import 'package:instagramultra/features/auth/data/models/login_dto.dart'
    show LoginDto;
import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';

class LoginRemoteDatasource {
  LogService log = LogService();
  final DioService dio;
  LoginRemoteDatasource({required this.dio});

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
}
