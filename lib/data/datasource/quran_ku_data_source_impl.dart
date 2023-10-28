import 'package:dio/dio.dart';
import 'package:quran_ku/core/appstring.dart';
import 'package:quran_ku/data/datasource/quran_ku_data_source.dart';
import 'package:quran_ku/data/model/surah_detail_response_model/surah_detail_response_model.dart';
import 'package:quran_ku/data/model/surah_list/surah_list_response_model.dart';

final dio = Dio();

class QuranKuDataSourceImpl implements QuranKuDataSource {
  @override
  Future<SurahListResponseModel> getSurahListDataSource() async {
    final Response response;
    final url = AppString.endPointUrl;
    try {
      response = await dio.get("$url/api/v2/surat");
      final result = SurahListResponseModel.fromJson(response.data);
      return result;
    } on DioException {
      rethrow;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<SurahDetailResponseModel> getSurahDetailDataSource(
      String nomor) async {
    final Response response;
    final url = AppString.endPointUrl;
    try {
      response = await dio.get("$url/api/v2/surat/$nomor");
      final result = SurahDetailResponseModel.fromJson(response.data);
      return result;
    } on DioException {
      rethrow;
    } catch (e) {
      throw e.toString();
    }
  }
}
