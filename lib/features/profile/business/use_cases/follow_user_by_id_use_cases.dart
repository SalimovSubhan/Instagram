import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';

class FollowUserByIdUseCases {
  final ProfileRepository profileRepository;

  FollowUserByIdUseCases({required this.profileRepository});

  Future<void> followUserById({required String userId}) async {
    profileRepository.followUserByUserId(userId: userId);
  }
}
