// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hrm/models/entities/error_messages.dart';

class BaseResponse<T> {
  final String message;
  final int statusCode;
  final List<ErrorMessages> errorMessages;
  final bool isOK;
  final Result<T>? result;
  BaseResponse({
    required this.message,
    required this.statusCode,
    required this.errorMessages,
    required this.isOK,
    required this.result,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}

class Result<T> {
  final T? dataRes;
  Result({
    required this.dataRes,
  });
  factory Result.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResultFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ResultToJson(this, toJsonT);
}

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponse<T>(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
      errorMessages: (json['errorMessages'] as List<dynamic>)
          .map((e) => ErrorMessages.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOK: json['isOK'] as bool,
      result: json['result'] == null
          ? null
          : Result<T>.fromJson(json['result'] as Map<String, dynamic>,
              (value) => fromJsonT(value)),
    );

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'errorMessages': instance.errorMessages,
      'isOK': instance.isOK,
      'result': instance.result?.toJson(
        (value) => toJsonT(value)!,
      ),
    };

Result<T> _$ResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Result<T>(
      dataRes: _$nullableGenericFromJson(json['dataRes'], fromJsonT),
    );

Map<String, dynamic> _$ResultToJson<T>(
  Result<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'dataRes': _$nullableGenericToJson(instance.dataRes, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
