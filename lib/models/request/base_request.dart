// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
part 'base_request.g.dart';

@JsonSerializable()
class BaseRequest {
  final dynamic data;
  final int action;
  final String? langCode;
  final int functionCode;

  BaseRequest({
    this.data,
    this.action = 0,
    this.langCode,
    this.functionCode = 0,
  });

  factory BaseRequest.fromJson(Map<String, dynamic> json) =>
      _$BaseRequestFromJson(json);
  Map<String, dynamic> toJson() => _$BaseRequestToJson(this);
}
