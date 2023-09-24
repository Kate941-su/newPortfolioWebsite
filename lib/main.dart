import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp())); // ProviderScopeでアプリケーションをラップします
}

// CounterProviderを作成します
final counterProvider = StateProvider<int>((ref) {
  return 0; // 初期値は0とします
});

// メインのWidget
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod Counter Example'),
        ),
        body: Center(
            child: Text(
          '$count',
          style: const TextStyle(fontSize: 48.0),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
