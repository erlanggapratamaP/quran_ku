import 'audio_surah_detail.dart';

class AyatSurahDetail {
  int? nomorAyat;
  String? teksArab;
  String? teksLatin;
  String? teksIndonesia;
  AudioSurahDetail? audio;

  AyatSurahDetail({
    this.nomorAyat,
    this.teksArab,
    this.teksLatin,
    this.teksIndonesia,
    this.audio,
  });

  factory AyatSurahDetail.fromJson(Map<String, dynamic> json) =>
      AyatSurahDetail(
        nomorAyat: json['nomorAyat'] as int?,
        teksArab: json['teksArab'] as String?,
        teksLatin: json['teksLatin'] as String?,
        teksIndonesia: json['teksIndonesia'] as String?,
        audio: json['audio'] == null
            ? null
            : AudioSurahDetail.fromJson(json['audio'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'nomorAyat': nomorAyat,
        'teksArab': teksArab,
        'teksLatin': teksLatin,
        'teksIndonesia': teksIndonesia,
        'audio': audio?.toJson(),
      };

  AyatSurahDetail copyWith({
    int? nomorAyat,
    String? teksArab,
    String? teksLatin,
    String? teksIndonesia,
    AudioSurahDetail? audio,
  }) {
    return AyatSurahDetail(
      nomorAyat: nomorAyat ?? this.nomorAyat,
      teksArab: teksArab ?? this.teksArab,
      teksLatin: teksLatin ?? this.teksLatin,
      teksIndonesia: teksIndonesia ?? this.teksIndonesia,
      audio: audio ?? this.audio,
    );
  }
}
