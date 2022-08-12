import 'package:flutter/material.dart';

import 'package:flash/flash.dart';

extension ContextX on BuildContext {
  Future<void> showUnimplementedDialog() => showInfoBar<void>(
        content: Text(
          'This feature is under-development, please come back soon :)',
          style: Theme.of(this).textTheme.bodyMedium,
        ),
      );

  Color get shimmerBase => Theme.of(this).colorScheme.secondary.withAlpha(20);
  Color get shimmerHightLight =>
      Theme.of(this).colorScheme.secondary.withAlpha(50);
}
