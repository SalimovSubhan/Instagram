import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagramultra/example_feature/presentation/providers/example_provider.dart';

class ExamplePage extends HookConsumerWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final examplesAsync = ref.watch(exampleProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Example Page')),
      body: examplesAsync.when(
        data: (examples) => ListView.builder(
          itemCount: examples.length,
          itemBuilder: (context, index) {
            final item = examples[index];
            return ListTile(
              title: Text(item.title),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
