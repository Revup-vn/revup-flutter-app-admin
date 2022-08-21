import 'package:flutter/material.dart';

class VerificationRequestEmpty extends StatelessWidget {
  const VerificationRequestEmpty({super.key});

  @override
  Widget build(BuildContext context) => Align(
        child: Text(
          "You're done. We currently have no more account verification's"
          ' request',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
          textAlign: TextAlign.center,
        ),
      );
}
