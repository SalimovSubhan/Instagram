import 'package:instagramultra/features/profile/business/entities/profile_info_entity.dart';
import 'package:instagramultra/features/profile/business/repositories/profile_repository.dart';
import 'package:instagramultra/features/profile/data/data_sources/get_profile_info_data_sources.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final GetProfileInfoDataSources getProfileInfoDataSources;

  ProfileRepositoryImpl({required this.getProfileInfoDataSources});
  @override
  Future<ProfileInfoEntity> getProfileInfo() {
    return getProfileInfoDataSources.getProfileInfo();
  }
}
