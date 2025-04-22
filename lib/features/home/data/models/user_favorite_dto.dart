import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_favorite_dto.g.dart';
part 'user_favorite_dto.freezed.dart';

@freezed
class UserFavoriteDto with _$UserFavoriteDto {
  const factory UserFavoriteDto({
    String? userId,
    String? userName,
    String? userPhoto,
    String? fullname,
  }) = _UserFavoriteDto;

  factory UserFavoriteDto.fromJson(Map<String, dynamic> json) =>
      _$UserFavoriteDtoFromJson(json);
}
