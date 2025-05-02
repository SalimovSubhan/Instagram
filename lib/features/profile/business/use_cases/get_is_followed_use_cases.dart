import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';

class GetIsFollowedUseCases {
  final ProfileRepository profileRepository;

  GetIsFollowedUseCases({required this.profileRepository});

  Future<bool> getIsFollowed({required String userId}) async {
    return await profileRepository.getIsFollowed(userId: userId);
  }
}
