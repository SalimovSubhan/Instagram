import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/features/profile/business/use_cases/get_profile_info_use_cases.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_profile_info_data_sources.dart';
import 'package:instagramultra/features/profile/presentation/providers/profile_info_provider.dart';
import 'package:riverpod/riverpod.dart';

final dioProvider = Provider(
  (ref) => DioService(),
);

final profileInfoDataSourceProvider = Provider(
  (ref) => GetProfileInfoDataSources(dio: ref.read(dioProvider)),
);

final getUseCaseProvider = Provider(
  (ref) => GetProfileInfoUseCases(
      profileRepository: ref.read(profileRepositoryProvider)),
);
