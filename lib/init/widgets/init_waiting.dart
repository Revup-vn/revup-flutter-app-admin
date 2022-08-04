import 'package:flutter/material.dart';

class InitWaiting extends StatelessWidget {
  const InitWaiting({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Please wait! Application is starting',
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      );
}
