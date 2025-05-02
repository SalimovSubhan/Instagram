import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';

class UnFollowUserByIdUseCases {
  final ProfileRepository profileRepository;

  UnFollowUserByIdUseCases({required this.profileRepository});

  Future<void> unFollowUserById({required String userId}) async {
      profileRepository.unFollowUserById(userId: userId);
  }
}
