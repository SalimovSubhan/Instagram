import 'package:instagramultra/features/home/business/entities/user_likes_entities.dart';
import 'package:instagramultra/features/home/data/models/user_likes_dto.dart';

extension UserLikesMapper on UserLikesDto {
  UserLikesEntities toEntity() => UserLikesEntities(
        fullname: fullname,
        userId: userId,
        userName: userName,
        userPhoto: userPhoto,
      );
}
