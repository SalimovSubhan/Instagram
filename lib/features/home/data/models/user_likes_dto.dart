import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_likes_dto.g.dart';
part 'user_likes_dto.freezed.dart';

@freezed
class UserLikesDto with _$UserLikesDto {
  const factory UserLikesDto({
    String? userId,
    String? userName,
    String? userPhoto,
    String? fullname,
  }) = _UserLikesDto;

  factory UserLikesDto.fromJson(Map<String, dynamic> json) =>
      _$UserLikesDtoFromJson(json);
}
