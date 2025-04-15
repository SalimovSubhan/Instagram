import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:instagramultra/core/storage/prefs_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';

class DioService {
  LogService log = LogService();
  PrefsService prefs = PrefsService();
  final String baseUrl = dotenv.env['API_URL']!;
  late final Dio dio;
  DioService() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
      ),
    );
  }

  Future<Response<dynamic>> get(
      {required String url, bool istoken = true}) async {
    try {
      final String? token = await prefs.getToken();
      final Map<String, String> headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        if (istoken && token != null) 'Authorization': 'Bearer $token',
      };
      final response = await dio.get(
        url,
        options: Options(headers: headers),
      );
      return response;
    } on DioException catch (e) {
      log.error('$e');
      return e.response!;
    }
  }

  Future<Response<dynamic>> post(
      {required String url,
      Map<String, dynamic>? body,
      bool istoken = true}) async {
    try {
      final String? token = await prefs.getToken();
      final Map<String, String> headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        if (istoken && token != null) 'Authorization': 'Bearer $token',
      };
      final response = await dio.post(
        url,
        data: body,
        options: Options(headers: headers),
      );
      return response;
    } on DioException catch (e) {
      log.error('$e');
      return e.response!;
    }
  }

  Future<Response<dynamic>> delete(
      {required String url, bool istoken = true}) async {
    try {
      final String? token = await prefs.getToken();
      final Map<String, String> headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        if (istoken && token != null) 'Authorization': 'Bearer $token',
      };
      final response = await dio.delete(
        url,
        options: Options(headers: headers),
      );
      return response;
    } on DioException catch (e) {
      log.error('$e');
      return e.response!;
    }
  }

  Future<Response<dynamic>> put(
      {required String url,
      Map<String, dynamic>? body,
      bool istoken = true}) async {
    try {
      final String? token = await prefs.getToken();
      final Map<String, String> headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        if (istoken && token != null) 'Authorization': 'Bearer $token',
      };
      final response = await dio.put(
        url,
        data: body,
        options: Options(headers: headers),
      );
      return response;
    } on DioException catch (e) {
      log.error('$e');
      return e.response!;
    }
  }
}
