import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';

class GetFollowersInfoUseCases {
  final ProfileRepository profileRepository;

  GetFollowersInfoUseCases({required this.profileRepository});

  Future<List<FollowEntity>> getFollowersInfo({required String userId}) async {
    return await profileRepository.getFollowersInfo(userId: userId);
  }
}
