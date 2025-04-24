import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/data/model/follow_dto.dart';
import 'package:instagramultra/features/profile/data/model/mapper/user_short_info_mapper.dart';

extension FollowMapper on FollowDTO {
  FollowEntity toEntity() => FollowEntity(
        id: id,
        userShortInfo: userShortInfo.toEntity(),
      );
}
