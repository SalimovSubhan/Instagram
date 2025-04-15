import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scrolControllerProvider = Provider.autoDispose(
  (ref) {
    final controler = ScrollController();
    ref.onDispose(() => controler.dispose());
    return controler;
  },
);
