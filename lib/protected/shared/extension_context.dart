import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  Future<void> showUnimplementedDialog() => showInfoBar<void>(
        content: Text(
          'This feature is under-development, please come back soon :)',
          style: Theme.of(this).textTheme.bodyMedium,
        ),
      );
}
