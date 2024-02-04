import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
@immutable
final class User extends Equatable {
  const User({this.id, this.userName, this.password});
  final String? id;
  final String? userName;
  final String? password;

  static const empty = User(
    id: '-',
    password: '',
    userName: '',
  );
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [userName, id, password];

  User copyWith({
    required String? id,
    required String? userName,
    required String? password,
  }) {
    return User(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }
}
