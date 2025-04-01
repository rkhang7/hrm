import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request.g.dart';

@JsonSerializable()
class SignUpRequest {
  final String userName;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String password;
  final DateTime dateOfBirth;
  final String positionCode;
  final String address;
  final int roleId;
  final bool gender;
  final DateTime hireDate;

  SignUpRequest({
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.dateOfBirth,
    required this.positionCode,
    required this.address,
    required this.roleId,
    required this.gender,
    required this.hireDate,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}
