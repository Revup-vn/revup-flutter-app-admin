import 'package:flutter/material.dart';

class VerificationRequestInitial extends StatelessWidget {
  const VerificationRequestInitial({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Getting verification requests, please wait!',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child: CircularProgressIndicator.adaptive(),
          ),
        ],
      );
}
