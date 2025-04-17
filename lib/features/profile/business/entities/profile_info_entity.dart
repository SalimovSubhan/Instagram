import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info_entity.g.dart';
part 'profile_info_entity.freezed.dart';

@freezed
class ProfileInfoEntity with _$ProfileInfoEntity {
  const factory ProfileInfoEntity({
    String? userImage,
    String? userId,
    String? userName,
    int? postCount,
    int? followerCount,
    int? followingCount,
  }) = _ProfileInfoEntity;

  factory ProfileInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoEntityFromJson(json);
}
