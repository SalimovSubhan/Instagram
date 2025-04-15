import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_likes_entities.g.dart';
part 'user_likes_entities.freezed.dart';

@freezed
class UserLikesEntities with _$UserLikesEntities {
  const factory UserLikesEntities({
    String? userId,
    String? userName,
    String? userPhoto,
    String? fullname,
  }) = _UserLikesEntities;

  factory UserLikesEntities.fromJson(Map<String, dynamic> json) =>
      _$UserLikesEntitiesFromJson(json);
}
