import 'data_surah_list_model.dart';

class SurahListResponseModel {
  int? code;
  String? message;
  List<DataSurahListModel>? data;

  SurahListResponseModel({this.code, this.message, this.data});

  @override
  String toString() {
    return 'SurahList(code: $code, message: $message, data: $data)';
  }

  factory SurahListResponseModel.fromJson(Map<String, dynamic> json) =>
      SurahListResponseModel(
        code: json['code'] as int?,
        message: json['message'] as String?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => DataSurahListModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
        'data': data?.map((e) => e.toJson()).toList(),
      };

  SurahListResponseModel copyWith({
    int? code,
    String? message,
    List<DataSurahListModel>? data,
  }) {
    return SurahListResponseModel(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
