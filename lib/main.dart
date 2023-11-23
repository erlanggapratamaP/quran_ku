import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_ku/core/navigation.dart';
import 'package:quran_ku/core/themedata.dart';
import 'package:quran_ku/presentation/cubit/set_dark_theme_cubit.dart';
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetDarkThemeCubit()..getDarkTheme(),
      child: BlocBuilder<SetDarkThemeCubit, bool>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: Styles.themeData(state, context),
            onGenerateRoute: pageRoutes.onGenerateRoute,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
