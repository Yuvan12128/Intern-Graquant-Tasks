import 'package:json_annotation/json_annotation.dart';
part 'console_message.g.dart';

@JsonSerializable(explicitToJson: true)
class ConsoleMessage {
  ConsoleMessage({
    required this.fileName,
    required this.methodName,
    required this.message,
    this.identifier,
  });
  final String? fileName;
  final String? methodName;
  final dynamic message;
  final String? identifier;

  factory ConsoleMessage.fromJson(Map<String, dynamic> json) =>
      _$ConsoleMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ConsoleMessageToJson(this);
}
