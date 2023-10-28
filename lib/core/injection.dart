import 'package:get_it/get_it.dart';
import 'package:quran_ku/core/appstring.dart';
import 'package:quran_ku/core/navigation.dart';
import 'package:quran_ku/data/datasource/quran_ku_data_source.dart';
import 'package:quran_ku/data/datasource/quran_ku_data_source_impl.dart';
import 'package:quran_ku/data/repository/quran_ku_respository_impl.dart';
import 'package:quran_ku/domain/repository/quran_ku_repository.dart';
import 'package:quran_ku/domain/usecase/quranku_usecase.dart';
import 'package:quran_ku/presentation/bloc/surah_bloc/surah_bloc.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton(
    () => AppString(),
  );
  locator.registerLazySingleton(() => PageRoutes());
  locator
      .registerLazySingleton<QuranKuDataSource>(() => QuranKuDataSourceImpl());
  locator.registerLazySingleton<QuranKuRepository>(
      () => QuranKuRepositoryImpl(locator()));
  locator.registerLazySingleton(() => QuranKuUsecase(locator()));
  locator.registerFactory(() => SurahBloc(locator()));
}
