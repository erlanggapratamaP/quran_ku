import 'package:get_it/get_it.dart';

class AppString {
  // static String get endPointUrl => baseUrl;
  static const appName = "Quran Ku";
  String get baseUrl => "https://equran.id";
  static String get endPointUrl => GetIt.instance<AppString>().baseUrl;

  //Url name
  static String urlMenuMainMenu = '/app-administrator/customers/menu/main-menu';
}
