import 'package:flutter/material.dart';

class ReportEmpty extends StatelessWidget {
  const ReportEmpty({super.key});

  @override
  Widget build(BuildContext context) => Align(
        child: Text(
          'Sorry, we did not get any record to show to you',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
          textAlign: TextAlign.center,
        ),
      );
}
