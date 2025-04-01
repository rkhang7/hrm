// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'error_messages.g.dart';

@JsonSerializable()
class ErrorMessages {
  final String errorCode;
  final String errorMessage;
  ErrorMessages({
    required this.errorCode,
    required this.errorMessage,
  });
  factory ErrorMessages.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessagesFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorMessagesToJson(this);
}
