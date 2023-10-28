class AudioFullSurahDetail {
  String? satu;
  String? dua;
  String? tiga;
  String? empat;
  String? lima;

  AudioFullSurahDetail({this.satu, this.dua, this.tiga, this.empat, this.lima});

  factory AudioFullSurahDetail.fromJson(Map<String, dynamic> json) =>
      AudioFullSurahDetail(
        satu: json['01'] as String?,
        dua: json['02'] as String?,
        tiga: json['03'] as String?,
        empat: json['04'] as String?,
        lima: json['05'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '01': satu,
        '02': dua,
        '03': tiga,
        '04': empat,
        '05': lima,
      };

  AudioFullSurahDetail copyWith({
    String? satu,
    String? dua,
    String? tiga,
    String? empat,
    String? lima,
  }) {
    return AudioFullSurahDetail(
      satu: satu ?? this.satu,
      dua: dua ?? this.dua,
      tiga: tiga ?? this.tiga,
      empat: empat ?? this.empat,
      lima: lima ?? this.lima,
    );
  }
}
