import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_dto.freezed.dart';
part 'register_dto.g.dart';

@freezed
class RegisterDto with _$RegisterDto {
  factory RegisterDto({
    String? userName,
    String? fullName,
    String? email,
    String? password,
    String? confirmPassword,
  }) = _RegisterDto;

  factory RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDtoFromJson(json);
}
