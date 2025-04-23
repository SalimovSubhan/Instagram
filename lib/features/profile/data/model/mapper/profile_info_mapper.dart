import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/data/model/profile_info_dto.dart';

extension ProfileInfoMapper on ProfileInfoDTO {
  ProfileInfoEntity toEntity() => ProfileInfoEntity(
        userName: userName,
        userId: userId,
        about: about,
        image: image,
        subscribersCount: subscribersCount,
        subscriptionsCount: subscriptionsCount,
        postCount: postCount,
      );
}
