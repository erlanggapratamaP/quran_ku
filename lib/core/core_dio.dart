import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:quran_ku/core/appstring.dart';
import 'package:quran_ku/core/injection.dart';

class CoreDio with DioMixin implements Dio {
  static const _timeOut = Duration(minutes: 1);

  CoreDio._() {
    final cookieJar = CookieJar();
    interceptors.add(CookieManager(cookieJar));
    options = BaseOptions(
      baseUrl: locator<AppString>().baseUrl,
      contentType: 'application/json; charset=utf-8',
      connectTimeout: _timeOut,
      sendTimeout: _timeOut,
      receiveTimeout: _timeOut,
      extra: {'withCredentials': true},
    );
  }
  static final CoreDio _instance = CoreDio._();

  static CoreDio get instance => _instance;

  static CoreDio get newInstance => CoreDio._();
}
