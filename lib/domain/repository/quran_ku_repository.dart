import 'package:dartz/dartz.dart';
import 'package:quran_ku/core/failure.dart';
import 'package:quran_ku/data/model/surah_detail_response_model/surah_detail_response_model.dart';
import 'package:quran_ku/data/model/surah_list/surah_list_response_model.dart';

abstract class QuranKuRepository {
  Future<Either<Failure, SurahListResponseModel>> getSurahListRepository();
  Future<Either<Failure, SurahDetailResponseModel>> getSurahDetailRepository(
      String nomor);
}
