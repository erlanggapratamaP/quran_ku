import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quran_ku/core/navigation.dart';
import 'package:quran_ku/presentation/page/homepage.dart';
import 'package:quran_ku/core/injection.dart' as di;

final pageRoutes = di.locator<PageRoutes>();
void main() {
  runZonedGuarded(() async {
    di.init();
    runApp(
      const MyApp(),
    );
  }, (error, stack) {
    // if (!kDebugMode) FirebaseCrashlytics.instance.recordError(error, stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: pageRoutes.onGenerateRoute,
      home: const HomePage(),
    );
  }
}
