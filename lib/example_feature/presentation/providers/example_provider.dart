import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/example_feature/business/entities/example_entity.dart';
import 'package:instagramultra/example_feature/business/usecases/get_examples_usecase.dart';

final exampleProvider = FutureProvider<List<ExampleEntity>>((ref) async {
  final useCase = ref.watch(getExamplesUseCaseProvider);
  return useCase();
});

// провайдер юзкейса
final getExamplesUseCaseProvider = Provider<GetExamplesUseCase>((ref) {
  // Тут ты должен передать реальный репозиторий
  throw UnimplementedError(); 
});
