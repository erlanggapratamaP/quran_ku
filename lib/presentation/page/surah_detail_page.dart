import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_ku/core/injection.dart';
import 'package:quran_ku/presentation/bloc/surah_bloc/surah_bloc.dart';
import 'package:quran_ku/presentation/cubit/set_dark_theme_cubit.dart';
import 'package:quran_ku/presentation/widget/surah_detail/surah_detail_item.dart';
import 'package:quran_ku/presentation/widget/surah_detail/surah_detail_loading.dart';

class SurahDetailPageArgs {
  final String name;
  final int id;
  SurahDetailPageArgs({required this.name, required this.id});
}

class SurahDetailPage extends StatelessWidget {
  final SurahDetailPageArgs args;

  const SurahDetailPage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SurahBloc>()
        ..add(
          GetSurahDetail(
            nomor: args.id.toString(),
          ),
        ),
      child: BlocBuilder<SetDarkThemeCubit, bool>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: state ? Colors.black : Colors.white,
              leading: BackButton(
                color: state ? Colors.white : Colors.black,
              ),
              title: Text(
                args.name,
                style: GoogleFonts.poppins(
                    color: state ? Colors.white : Colors.black),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: BlocBuilder<SurahBloc, SurahState>(
                builder: (context, state) {
                  if (state is SurahDetailLoaded) {
                    final dataAyat = state.data.data?.ayat;
                    if (dataAyat == null) return const SizedBox();
                    return SurahDetailItem(
                      dataAyat: dataAyat,
                    );
                  }
                  return const SurahDetailLoading();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
