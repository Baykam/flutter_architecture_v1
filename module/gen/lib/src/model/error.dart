import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class ErrorModel extends Equatable {
  ErrorModel({this.errorStatus, this.title, this.body});

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
  final int? errorStatus;
  final String? title;
  final dynamic body;

  @override
  List<Object?> get props => [title, body, errorStatus];

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);

  ErrorModel copyWith({
    int? errorStatus,
    String? title,
    String? body,
  }) {
    return ErrorModel(
      body: body ?? this.body,
      errorStatus: errorStatus ?? this.errorStatus,
      title: title ?? this.title,
    );
  }
}
