import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/features/profile/business/use_cases/get_profile_info_use_cases.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_followers_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_follows_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_profile_info_data_sources.dart';
import 'package:instagramultra/features/profile/data/respositories/profile_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final dioProvider = Provider(
  (ref) => DioService(),
);

final profileRepositoryProvider = Provider(
  (ref) => ProfileRepositoryImpl(
      getFollowsInfoDataSources: ref.read(followsDataSourceProvider),
      getProfileInfoDataSources: ref.read(profileInfoDataSourceProvider),
      getFollowersInfoDataSources: ref.read(followersDataSourceProvider)),
);

final followersDataSourceProvider = Provider(
  (ref) => GetFollowersInfoDataSources(dio: ref.read(dioProvider)),
);
final followsDataSourceProvider = Provider(
  (ref) => GetFollowsInfoDataSources(dio: ref.read(dioProvider)),
);

final profileInfoDataSourceProvider = Provider(
  (ref) => GetProfileInfoDataSources(dio: ref.read(dioProvider)),
);

final getUseCaseProvider = Provider(
  (ref) => GetProfileInfoUseCases(
      profileRepository: ref.read(profileRepositoryProvider)),
);
