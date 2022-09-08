import 'package:flutter/material.dart';

class UsersEmpty extends StatelessWidget {
  const UsersEmpty({super.key, required this.term});
  final String term;

  @override
  Widget build(BuildContext context) => Align(
        child: Text(
          'Sorry, we did not get any record with term: ${term.trim()}',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
          textAlign: TextAlign.center,
        ),
      );
}
