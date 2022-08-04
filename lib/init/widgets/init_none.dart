import 'package:flutter/material.dart';

class InitNone extends StatelessWidget {
  const InitNone({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Start Initializing Application',
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      );
}
