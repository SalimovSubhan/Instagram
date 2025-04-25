 
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_is_followed_info_data_sources.dart';
import 'package:instagramultra/features/profile/presentation/providers/profile_proivders.dart';

final isFolloweProvider = FutureProvider.family<bool, String>(
  (ref,userId) =>  GetIsFollowedInfoDataSources(dio: ref.read(dioProvider)).getIsFollowed(userId: userId),
);
