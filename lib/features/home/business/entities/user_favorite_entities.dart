import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_favorite_entities.g.dart';
part 'user_favorite_entities.freezed.dart';

@freezed
class UserFavoriteEntities with _$UserFavoriteEntities {
  const factory UserFavoriteEntities({
    String? userId,
    String? userName,
    String? userPhoto,
    String? fullname,
  }) = _UserFavoriteEntities;

  factory UserFavoriteEntities.fromJson(Map<String, dynamic> json) =>
      _$UserFavoriteEntitiesFromJson(json);
}
