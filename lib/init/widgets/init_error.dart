import 'package:flutter/material.dart';

class InitError extends StatelessWidget {
  const InitError({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline_rounded, size: 50),
          const SizedBox(
            height: 200,
          ),
          Text(
            'Application cannot initialized',
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      );
}
