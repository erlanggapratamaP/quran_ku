part of 'surah_bloc.dart';

@immutable
sealed class SurahEvent {}

final class GetSurahList implements SurahEvent {}

final class GetSurahDetail implements SurahEvent {
  final String nomor;
  GetSurahDetail({required this.nomor});
}
