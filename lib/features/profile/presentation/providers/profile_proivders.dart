import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/features/profile/business/use_cases/follow_user_by_id_use_cases.dart';
import 'package:instagramultra/features/profile/business/use_cases/get_followers_info_use_cases.dart';
import 'package:instagramultra/features/profile/business/use_cases/get_follows_info_use_caes.dart';
import 'package:instagramultra/features/profile/business/use_cases/get_is_followed_use_cases.dart';
import 'package:instagramultra/features/profile/business/use_cases/get_profile_info_use_cases.dart';
import 'package:instagramultra/features/profile/business/use_cases/un_follow_user_by_id_use_cases.dart';
import 'package:instagramultra/features/profile/data/data_sources/follow_user_by_id_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_followers_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_follows_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_is_followed_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_profile_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/un_follow_user_by_id_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/respositories/profile_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final dioProvider = Provider(
  (ref) => DioService(),
);

final profileRepositoryProvider = Provider(
  (ref) => ProfileRepositoryImpl(
    getIsFollowedInfoDataSources: ref.read(isFollowedInfoDataSources),
    getFollowsInfoDataSources: ref.read(followsDataSourceProvider),
    getProfileInfoDataSources: ref.read(profileInfoDataSourceProvider),
    getFollowersInfoDataSources: ref.read(followersDataSourceProvider),
    followUserByIdInfoDataSources: ref.read(followUserByIdInfoDataSources),
    unFollowUserByIdInfoDataSources: ref.read(unFollowUserByIdInfoDataSources),
  ),
);
//Data Sources
final followersDataSourceProvider = Provider(
  (ref) => GetFollowersInfoDataSources(dio: ref.read(dioProvider)),
);
final followsDataSourceProvider = Provider(
  (ref) => GetFollowsInfoDataSources(dio: ref.read(dioProvider)),
);

final profileInfoDataSourceProvider = Provider(
  (ref) => GetProfileInfoDataSources(dio: ref.read(dioProvider)),
);

final isFollowedInfoDataSources = Provider(
  (ref) => GetIsFollowedInfoDataSources(dio: ref.read(dioProvider)),
);
final followUserByIdInfoDataSources = Provider(
  (ref) => FollowUserByIdInfoDataSources(dio: ref.read(dioProvider)),
);
final unFollowUserByIdInfoDataSources = Provider(
  (ref) => UnFollowUserByIdInfoDataSources(dio: ref.read(dioProvider)),
);
//Use Cases
final getProfileInfoUseCases = Provider(
  (ref) => GetProfileInfoUseCases(
      profileRepository: ref.read(profileRepositoryProvider)),
);
final getFollowersInfoUseCases = Provider(
  (ref) => GetFollowersInfoUseCases(
      profileRepository: ref.read(profileRepositoryProvider)),
);
final getFollowsInfoUseCases = Provider(
  (ref) => GetFollowsInfoUseCaes(
      profileRepository: ref.read(profileRepositoryProvider)),
);
final getIsFollowedUseCases = Provider(
  (ref) => GetIsFollowedUseCases(
      profileRepository: ref.read(profileRepositoryProvider)),
);
final followUserByIdUseCases = Provider(
  (ref) => FollowUserByIdUseCases(
      profileRepository: ref.read(profileRepositoryProvider)),
);
final unFollowUserByIdUseCases = Provider(
  (ref) => UnFollowUserByIdUseCases(
      profileRepository: ref.read(profileRepositoryProvider)),
);
