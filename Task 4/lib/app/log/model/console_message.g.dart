// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'console_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsoleMessage _$ConsoleMessageFromJson(Map<String, dynamic> json) =>
    ConsoleMessage(
      fileName: json['fileName'] as String?,
      methodName: json['methodName'] as String?,
      message: json['message'],
      identifier: json['identifier'] as String?,
    );

Map<String, dynamic> _$ConsoleMessageToJson(ConsoleMessage instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'methodName': instance.methodName,
      'message': instance.message,
      'identifier': instance.identifier,
    };
