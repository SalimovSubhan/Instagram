import 'package:instagramultra/features/profile/business/entities/user_short_info_entity.dart';

class FollowEntity {
  final int id;
  final UserShortInfoEntity userHortInfo;

  FollowEntity({
    required this.id,
    required this.userHortInfo,
  });
}
