import 'package:dio/dio.dart';

abstract class Failure {
  String message;

  Failure(String msg) : message = msg;
}

class OtherFailure extends Failure {
  OtherFailure(String message) : super(message);
}

class DioFailure extends Failure {
  DioFailure(DioException dioError) : super('') {
    message = handleError(dioError);
  }

  String handleError(DioException error) {
    var errorDescription =
        'Terjadi kesalahan pada jaringan. Silakan coba lagi nanti. [${error.type.name}]';

    if (error.response?.statusCode == 401) {
      errorDescription = "Unauthorized";
    } else if (error.response?.statusCode == 403) {
      errorDescription = "Forbidden Permission";
    }
    return errorDescription;
  }
}
