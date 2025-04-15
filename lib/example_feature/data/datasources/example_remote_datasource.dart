import '../models/example_model.dart';

abstract class ExampleRemoteDataSource {
  Future<List<ExampleModel>> fetchExamples();
}

class ExampleRemoteDataSourceImpl implements ExampleRemoteDataSource {
  @override
  Future<List<ExampleModel>> fetchExamples() async {
    // Здесь будет вызов API
    return [
      ExampleModel(id: 1, title: 'Example 1'),
      ExampleModel(id: 2, title: 'Example 2'),
    ];
  }
}
