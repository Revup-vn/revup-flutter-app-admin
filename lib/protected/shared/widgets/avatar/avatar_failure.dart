import 'package:flutter/material.dart';

import 'avatar.dart';

class AvatarFailure extends StatelessWidget {
  const AvatarFailure({super.key});

  @override
  Widget build(BuildContext context) => CircleAvatar(
        maxRadius: kAvatarMaxRadius,
        minRadius: kAvatarMinRadius,
        backgroundColor: Theme.of(context).errorColor,
        child: Text(
          '!',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onError,
                fontSize: 30,
              ),
        ),
      );
}
