import 'package:flutter/material.dart';
import 'package:quran_ku/core/routes.dart';
import 'package:quran_ku/presentation/page/homepage.dart';
import 'package:quran_ku/presentation/page/surah_detail_page.dart';

class PageRoutes {
  PageRoutes();
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_) => _getPageRoute(routeSettings),
    );
  }

  Widget _getPageRoute(RouteSettings routeSettings) {
    try {
      switch (routeSettings.name) {
        case Routes.homePage:
          return const HomePage();
        case Routes.detailSurah:
          final Map<String, dynamic> args =
              routeSettings.arguments as Map<String, dynamic>;
          return SurahDetailPage(args: args['args'] as SurahDetailPageArgs);
        default:
          return _UnderMaintanancePage(
              message: 'No route defined for ${routeSettings.name}');
      }
    } on Error catch (e) {
      return _UnderMaintanancePage(message: e);
    } catch (e) {
      return _UnderMaintanancePage(message: e);
    }
  }
}

class _UnderMaintanancePage extends StatelessWidget {
  final dynamic message;
  const _UnderMaintanancePage({Key? key, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Page tidak dapat ditemukan : $message"));
  }
}
