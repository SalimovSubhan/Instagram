import 'package:logger/logger.dart';

class LogService {
  final logger = Logger();

  void error(String message) {
    logger.e(message);
  }

  void debag(String message) {
    logger.d(message);
  }

  void info(String message) {
    logger.i(message);
  }

  void warning(String message) {
    logger.w(message);
  }

  void trase(String message) {
    logger.t(message);
  }
}
