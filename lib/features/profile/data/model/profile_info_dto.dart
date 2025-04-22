import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info_dto.g.dart';
part 'profile_info_dto.freezed.dart';

@freezed
class ProfileInfoDTO with _$ProfileInfoDTO {
  const factory ProfileInfoDTO({
    String? image,
    String? userId,
    String? userName,
    String? about,
    int? postCount,
    int? subscribersCount,
    int? subscriptionsCount,
  }) = _ProfileInfoDTO;

  factory ProfileInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoDTOFromJson(json);
}
