import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_short_info_dto.g.dart';
part 'user_short_info_dto.freezed.dart';

@freezed
class UserShortInfoDTO with _$UserShortInfoDTO {
  factory UserShortInfoDTO(
      {required String userId,
      required String userName,
      required String userPhoto,
      required String fullName}) = _UserShortInfoDTO;
  factory UserShortInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$UserShortInfoDTOFromJson(json);
}
