import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quran_ku/core/failure.dart';
import 'package:quran_ku/data/datasource/quran_ku_data_source.dart';
import 'package:quran_ku/data/model/surah_detail_response_model/surah_detail_response_model.dart';
import 'package:quran_ku/data/model/surah_list/surah_list_response_model.dart';
import 'package:quran_ku/domain/repository/quran_ku_repository.dart';

class QuranKuRepositoryImpl implements QuranKuRepository {
  final QuranKuDataSource _remoteDataSource;

  QuranKuRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<Failure, SurahListResponseModel>>
      getSurahListRepository() async {
    try {
      final result = await _remoteDataSource.getSurahListDataSource();
      return Right(result);
    } on DioException catch (dioError) {
      return Left(DioFailure(dioError));
    } catch (error) {
      return Left(OtherFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure, SurahDetailResponseModel>> getSurahDetailRepository(
      String nomor) async {
    try {
      final result = await _remoteDataSource.getSurahDetailDataSource(nomor);
      return Right(result);
    } on DioException catch (dioError) {
      return Left(DioFailure(dioError));
    } catch (error) {
      return Left(OtherFailure(error.toString()));
    }
  }
}
