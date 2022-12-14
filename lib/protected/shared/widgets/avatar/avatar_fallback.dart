import 'package:flutter/material.dart';

import 'avatar.dart';

class AvatarFallback extends StatelessWidget {
  const AvatarFallback({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) => CircleAvatar(
        maxRadius: kAvatarMaxRadius,
        minRadius: kAvatarMinRadius,
        backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(70),
        child: Text(
          name[0].toUpperCase(),
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 30,
              ),
        ),
      );
}
