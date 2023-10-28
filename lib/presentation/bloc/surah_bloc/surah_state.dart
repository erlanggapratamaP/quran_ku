part of 'surah_bloc.dart';

@immutable
sealed class SurahState {}

final class SurahInitial extends SurahState {}

final class SurahListLoading extends SurahState {}

final class SurahListLoaded extends SurahState {
  final SurahListResponseModel data;
  SurahListLoaded(this.data);
}

final class SurahDetailLoaded extends SurahState {
  final SurahDetailResponseModel data;
  SurahDetailLoaded(this.data);
}

final class SurahListError extends SurahState {
  final Failure failure;

  SurahListError(this.failure);
}

final class SurahDetailError extends SurahState {
  final Failure failure;

  SurahDetailError(this.failure);
}
