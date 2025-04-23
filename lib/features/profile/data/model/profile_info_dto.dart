import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info_dto.g.dart';
part 'profile_info_dto.freezed.dart';

@freezed
class ProfileInfoDTO with _$ProfileInfoDTO {
  const factory ProfileInfoDTO({
  required  String? image,
  required  String? userId,
   required String? userName,
   required String? about,
   required int? postCount,
   required int? subscribersCount,
   required int? subscriptionsCount,
  }) = _ProfileInfoDTO;

  factory ProfileInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoDTOFromJson(json);
}
