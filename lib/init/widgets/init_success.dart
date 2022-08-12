import 'package:flutter/material.dart';

class InitSuccess extends StatelessWidget {
  const InitSuccess({super.key, required this.onSuccess});
  final VoidCallback onSuccess;

  @override
  Widget build(BuildContext context) {
    onSuccess();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.check_circle_outline_outlined,
          size: 200,
        ),
        const SizedBox(
          height: 100,
        ),
        Text(
          'Application started successfully',
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );
  }
}
