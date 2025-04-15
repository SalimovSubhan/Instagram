import 'package:instagramultra/example_feature/data/datasources/example_remote_datasource.dart';

import '../../business/entities/example_entity.dart';
import '../../business/repositories/example_repository.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  final ExampleRemoteDataSource remoteDataSource;

  ExampleRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ExampleEntity>> getExamples() async {
    return await remoteDataSource.fetchExamples();
  }
}
