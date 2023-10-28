import 'package:dartz/dartz.dart';
import 'package:quran_ku/core/failure.dart';
import 'package:quran_ku/data/model/surah_detail_response_model/surah_detail_response_model.dart';
import 'package:quran_ku/data/model/surah_list/surah_list_response_model.dart';
import 'package:quran_ku/domain/repository/quran_ku_repository.dart';

class QuranKuUsecase {
  QuranKuUsecase(this.repository);

  final QuranKuRepository repository;

  Future<Either<Failure, SurahListResponseModel>> getSurahListUsecase() {
    return repository.getSurahListRepository();
  }

  Future<Either<Failure, SurahDetailResponseModel>> getSurahDetailUsecase(
      String nomor) {
    return repository.getSurahDetailRepository(nomor);
  }
}
