import 'data_surah_detail.dart';

class SurahDetailResponseModel {
  int? code;
  String? message;
  DataSurahDetail? data;

  SurahDetailResponseModel({this.code, this.message, this.data});

  factory SurahDetailResponseModel.fromJson(Map<String, dynamic> json) {
    return SurahDetailResponseModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataSurahDetail.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
        'data': data?.toJson(),
      };

  SurahDetailResponseModel copyWith({
    int? code,
    String? message,
    DataSurahDetail? data,
  }) {
    return SurahDetailResponseModel(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
