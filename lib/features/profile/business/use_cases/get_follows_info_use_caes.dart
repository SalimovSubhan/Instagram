import 'package:instagramultra/features/profile/business/entities/follow_entity.dart';
import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';

class GetFollowsInfoUseCaes {
  final ProfileRepository profileRepository;

  GetFollowsInfoUseCaes({required this.profileRepository});

  Future<List<FollowEntity>> getFollowsInfo({required String userId}) async {
    return await profileRepository.getFollowsInfo(userId: userId);
  }
}
