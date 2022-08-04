import 'package:flutter/material.dart';

class InitActive extends StatelessWidget {
  const InitActive({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Loading',
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      );
}
