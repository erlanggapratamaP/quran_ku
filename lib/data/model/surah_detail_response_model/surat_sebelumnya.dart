class SuratSebelumnya {
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;

  SuratSebelumnya({this.nomor, this.nama, this.namaLatin, this.jumlahAyat});

  factory SuratSebelumnya.fromJson(Map<String, dynamic> json) {
    return SuratSebelumnya(
      nomor: json['nomor'] as int?,
      nama: json['nama'] as String?,
      namaLatin: json['namaLatin'] as String?,
      jumlahAyat: json['jumlahAyat'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'nomor': nomor,
        'nama': nama,
        'namaLatin': namaLatin,
        'jumlahAyat': jumlahAyat,
      };

  SuratSebelumnya copyWith({
    int? nomor,
    String? nama,
    String? namaLatin,
    int? jumlahAyat,
  }) {
    return SuratSebelumnya(
      nomor: nomor ?? this.nomor,
      nama: nama ?? this.nama,
      namaLatin: namaLatin ?? this.namaLatin,
      jumlahAyat: jumlahAyat ?? this.jumlahAyat,
    );
  }
}
