import 'package:quran_ku/data/model/surah_detail_response_model/surah_detail_response_model.dart';
import 'package:quran_ku/data/model/surah_list/surah_list_response_model.dart';

abstract class QuranKuDataSource {
  Future<SurahListResponseModel> getSurahListDataSource();
  Future<SurahDetailResponseModel> getSurahDetailDataSource(String nomor);
}
