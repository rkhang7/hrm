// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRequest _$BaseRequestFromJson(Map<String, dynamic> json) => BaseRequest(
      data: json['data'],
      action: (json['action'] as num?)?.toInt() ?? 0,
      langCode: json['langCode'] as String?,
      functionCode: (json['functionCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$BaseRequestToJson(BaseRequest instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.action,
      'langCode': instance.langCode,
      'functionCode': instance.functionCode,
    };
