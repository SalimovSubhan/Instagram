// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterDtoImpl _$$RegisterDtoImplFromJson(Map<String, dynamic> json) =>
    _$RegisterDtoImpl(
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$$RegisterDtoImplToJson(_$RegisterDtoImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
