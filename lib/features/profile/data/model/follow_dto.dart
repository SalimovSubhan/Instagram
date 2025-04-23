import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagramultra/features/profile/data/model/user_short_info_dto.dart';
part 'follow_dto.g.dart';
part 'follow_dto.freezed.dart';

@freezed
class FollowDTO with _$FollowDTO {
  factory FollowDTO({
    required int id,
    required UserShortInfoDTO userShortInfo,
  }) = _FollowDTO;
  factory FollowDTO.fromJson(Map<String, dynamic> json) =>
      _$FollowDTOFromJson(json);
}
