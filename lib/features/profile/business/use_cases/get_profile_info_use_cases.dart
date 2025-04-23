import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';

class GetProfileInfoUseCases {
  final ProfileRepository profileRepository;

  GetProfileInfoUseCases({required this.profileRepository});
  Future<ProfileInfoEntity> getProfileInfo() async {
    return await profileRepository.getProfileInfo();
  }
}
