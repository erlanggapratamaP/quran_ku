import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran_ku/core/extension.dart';
import 'package:quran_ku/core/injection.dart';
import 'package:quran_ku/presentation/bloc/surah_bloc/surah_bloc.dart';
import 'package:quran_ku/presentation/widget/surah_list_item.dart';
import 'package:quran_ku/presentation/widget/surah_list_loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nama = "Erlangga";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SurahBloc>()..add(GetSurahList()),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: context.height() / 15,
                  ),
                  Align(
                    child: SvgPicture.asset(
                      "assets/svg/logo_quran.svg",
                      colorFilter:
                          const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      height: 100,
                      width: 100,
                    ),
                  ),
                  BlocBuilder<SurahBloc, SurahState>(
                    builder: (context, state) {
                      if (state is SurahListLoaded) {
                        final data = state.data.data;
                        if (data == null) return Container();
                        return SurahListItem(
                          data: data,
                        );
                      }
                      return const SurahListLoadingWidget();
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
