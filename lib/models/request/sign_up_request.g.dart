// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    SignUpRequest(
      userName: json['userName'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      positionCode: json['positionCode'] as String,
      address: json['address'] as String,
      roleId: (json['roleId'] as num).toInt(),
      gender: json['gender'] as bool,
      hireDate: DateTime.parse(json['hireDate'] as String),
    );

Map<String, dynamic> _$SignUpRequestToJson(SignUpRequest instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'positionCode': instance.positionCode,
      'address': instance.address,
      'roleId': instance.roleId,
      'gender': instance.gender,
      'hireDate': instance.hireDate.toIso8601String(),
    };
