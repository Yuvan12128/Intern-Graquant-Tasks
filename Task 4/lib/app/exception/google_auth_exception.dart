import 'package:json_annotation/json_annotation.dart';
part 'google_auth_exception.g.dart';

@JsonSerializable(explicitToJson: true)
class GoogleAuthException implements Exception {
  final String message;
  const GoogleAuthException(this.message);

  factory GoogleAuthException.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthExceptionFromJson(json);

  Map<String, dynamic> toJson() => _$GoogleAuthExceptionToJson(this);
}
