import 'audio_full_surah_detail.dart';
import 'ayat_surah_detail.dart';
import 'surat_sebelumnya.dart';
import 'surat_selanjutnya.dart';

class DataSurahDetail {
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;
  String? tempatTurun;
  String? arti;
  String? deskripsi;
  AudioFullSurahDetail? audioFull;
  List<AyatSurahDetail>? ayat;
  SuratSelanjutnya? suratSelanjutnya;
  SuratSebelumnya? suratSebelumnya;

  DataSurahDetail({
    this.nomor,
    this.nama,
    this.namaLatin,
    this.jumlahAyat,
    this.tempatTurun,
    this.arti,
    this.deskripsi,
    this.audioFull,
    this.ayat,
    this.suratSelanjutnya,
    this.suratSebelumnya,
  });

  factory DataSurahDetail.fromJson(Map<String, dynamic> json) =>
      DataSurahDetail(
        nomor: json['nomor'] as int?,
        nama: json['nama'] as String?,
        namaLatin: json['namaLatin'] as String?,
        jumlahAyat: json['jumlahAyat'] as int?,
        tempatTurun: json['tempatTurun'] as String?,
        arti: json['arti'] as String?,
        deskripsi: json['deskripsi'] as String?,
        audioFull: json['audioFull'] == null
            ? null
            : AudioFullSurahDetail.fromJson(
                json['audioFull'] as Map<String, dynamic>),
        ayat: (json['ayat'] as List<dynamic>?)
            ?.map((e) => AyatSurahDetail.fromJson(e as Map<String, dynamic>))
            .toList(),
        suratSelanjutnya: json['suratSelanjutnya'] == null
            ? null
            : SuratSelanjutnya.fromJson(
                json['suratSelanjutnya'] as Map<String, dynamic>),
        suratSebelumnya: json['suratSebelumnya'] == null
            ? null
            : SuratSebelumnya.fromJson(
                json['suratSebelumnya'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'nomor': nomor,
        'nama': nama,
        'namaLatin': namaLatin,
        'jumlahAyat': jumlahAyat,
        'tempatTurun': tempatTurun,
        'arti': arti,
        'deskripsi': deskripsi,
        'audioFull': audioFull?.toJson(),
        'ayat': ayat?.map((e) => e.toJson()).toList(),
        'suratSelanjutnya': suratSelanjutnya?.toJson(),
        'suratSebelumnya': suratSebelumnya?.toJson(),
      };

  DataSurahDetail copyWith({
    int? nomor,
    String? nama,
    String? namaLatin,
    int? jumlahAyat,
    String? tempatTurun,
    String? arti,
    String? deskripsi,
    AudioFullSurahDetail? audioFull,
    List<AyatSurahDetail>? ayat,
    SuratSelanjutnya? suratSelanjutnya,
    SuratSebelumnya? suratSebelumnya,
  }) {
    return DataSurahDetail(
      nomor: nomor ?? this.nomor,
      nama: nama ?? this.nama,
      namaLatin: namaLatin ?? this.namaLatin,
      jumlahAyat: jumlahAyat ?? this.jumlahAyat,
      tempatTurun: tempatTurun ?? this.tempatTurun,
      arti: arti ?? this.arti,
      deskripsi: deskripsi ?? this.deskripsi,
      audioFull: audioFull ?? this.audioFull,
      ayat: ayat ?? this.ayat,
      suratSelanjutnya: suratSelanjutnya ?? this.suratSelanjutnya,
      suratSebelumnya: suratSebelumnya ?? this.suratSebelumnya,
    );
  }
}
