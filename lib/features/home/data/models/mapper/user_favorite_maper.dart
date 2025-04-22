import 'package:instagramultra/features/home/business/entities/user_favorite_entities.dart';
import 'package:instagramultra/features/home/data/models/user_favorite_dto.dart';

extension UserFavoriteMaper on UserFavoriteDto {
  UserFavoriteEntities toEntity() => UserFavoriteEntities(
        fullname: fullname,
        userId: userId,
        userName: userName,
        userPhoto: userPhoto,
      );
}
