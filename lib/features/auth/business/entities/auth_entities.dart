import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entities.g.dart';
part 'auth_entities.freezed.dart';

@freezed
class AuthEntities with _$AuthEntities {
  const factory AuthEntities({
     String? data,
     List<String>? errors,
     int? statusCode,
  }) = _LoginEntities;

  factory AuthEntities.fromJson(Map<String, dynamic> json) =>
      _$AuthEntitiesFromJson(json);
}
