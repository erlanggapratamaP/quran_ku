import 'audio_full_surah_list.dart';

class DataSurahListModel {
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;
  String? tempatTurun;
  String? arti;
  String? deskripsi;
  AudioFullSurahList? audioFull;

  DataSurahListModel({
    this.nomor,
    this.nama,
    this.namaLatin,
    this.jumlahAyat,
    this.tempatTurun,
    this.arti,
    this.deskripsi,
    this.audioFull,
  });

  @override
  String toString() {
    return 'Datum(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi, audioFull: $audioFull)';
  }

  factory DataSurahListModel.fromJson(Map<String, dynamic> json) =>
      DataSurahListModel(
        nomor: json['nomor'] as int?,
        nama: json['nama'] as String?,
        namaLatin: json['namaLatin'] as String?,
        jumlahAyat: json['jumlahAyat'] as int?,
        tempatTurun: json['tempatTurun'] as String?,
        arti: json['arti'] as String?,
        deskripsi: json['deskripsi'] as String?,
        audioFull: json['audioFull'] == null
            ? null
            : AudioFullSurahList.fromJson(
                json['audioFull'] as Map<String, dynamic>),
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
      };

  DataSurahListModel copyWith({
    int? nomor,
    String? nama,
    String? namaLatin,
    int? jumlahAyat,
    String? tempatTurun,
    String? arti,
    String? deskripsi,
    AudioFullSurahList? audioFull,
  }) {
    return DataSurahListModel(
      nomor: nomor ?? this.nomor,
      nama: nama ?? this.nama,
      namaLatin: namaLatin ?? this.namaLatin,
      jumlahAyat: jumlahAyat ?? this.jumlahAyat,
      tempatTurun: tempatTurun ?? this.tempatTurun,
      arti: arti ?? this.arti,
      deskripsi: deskripsi ?? this.deskripsi,
      audioFull: audioFull ?? this.audioFull,
    );
  }
}
