import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran_ku/core/failure.dart';
import 'package:quran_ku/data/model/surah_detail_response_model/surah_detail_response_model.dart';
import 'package:quran_ku/data/model/surah_list/surah_list_response_model.dart';
import 'package:quran_ku/domain/usecase/quranku_usecase.dart';

part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final QuranKuUsecase _quranKuUsecase;

  SurahBloc(this._quranKuUsecase) : super(SurahInitial()) {
    on<GetSurahList>(_onGetSurahList, transformer: droppable());
    on<GetSurahDetail>(_onGetSurahDetail, transformer: droppable());
  }
  void _onGetSurahList(
    GetSurahList event,
    Emitter<SurahState> emit,
  ) async {
    emit(SurahListLoading());

    final result = await _quranKuUsecase.getSurahListUsecase();

    result.fold(
        (l) => emit(SurahListError(l)), (r) => emit(SurahListLoaded(r)));
  }

  void _onGetSurahDetail(
    GetSurahDetail event,
    Emitter<SurahState> emit,
  ) async {
    emit(SurahListLoading());

    final result = await _quranKuUsecase.getSurahDetailUsecase(event.nomor);

    result.fold(
        (l) => emit(SurahDetailError(l)), (r) => emit(SurahDetailLoaded(r)));
  }
}
