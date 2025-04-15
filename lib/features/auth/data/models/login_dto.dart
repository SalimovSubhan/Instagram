import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.g.dart';
part 'login_dto.freezed.dart';

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String userName,
    required String password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}
