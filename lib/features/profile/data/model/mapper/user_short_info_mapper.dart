import 'package:instagramultra/features/profile/business/entities/user_short_info_entity.dart';
import 'package:instagramultra/features/profile/data/model/user_short_info_dto.dart';

extension UserShortInfoMapper on UserShortInfoDTO {
  UserShortInfoEntity toEntity() => UserShortInfoEntity(
        userName: userName,
        userId: userId,
        userPhoto: userPhoto,
        fullName: fullName,
      );
}
