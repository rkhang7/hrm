import 'package:json_annotation/json_annotation.dart';
part 'common_entity.g.dart';

@JsonSerializable()
class CommonEntity {
  final String code;
  final String name;
  final String groupCode;
  final bool active;

  CommonEntity({
    required this.code,
    required this.name,
    required this.groupCode,
    required this.active,
  });

  factory CommonEntity.fromJson(Map<String, dynamic> json) =>
      _$CommonEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CommonEntityToJson(this);
}
