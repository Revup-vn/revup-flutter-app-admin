import 'package:flutter/material.dart';

class AvatarFailure extends StatelessWidget {
  const AvatarFailure({super.key});

  @override
  Widget build(BuildContext context) => CircleAvatar(
        maxRadius: 50,
        minRadius: 30,
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
