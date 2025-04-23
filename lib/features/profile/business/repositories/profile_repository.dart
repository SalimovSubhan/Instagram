import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';

abstract class ProfileRepository {
  Future<ProfileInfoEntity> getProfileInfo();
}
