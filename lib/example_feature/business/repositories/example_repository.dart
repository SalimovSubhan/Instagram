import 'package:instagramultra/example_feature/business/entities/example_entity.dart';

abstract class ExampleRepository {
  Future<List<ExampleEntity>> getExamples();
}
