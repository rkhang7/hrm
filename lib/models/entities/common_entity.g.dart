// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonEntity _$CommonEntityFromJson(Map<String, dynamic> json) => CommonEntity(
      code: json['code'] as String,
      name: json['name'] as String,
      groupCode: json['groupCode'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$CommonEntityToJson(CommonEntity instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'groupCode': instance.groupCode,
      'active': instance.active,
    };
