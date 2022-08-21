import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../../../shared/widgets/avatar/avatar.dart';

class VerificationDetailHeader extends StatelessWidget {
  const VerificationDetailHeader({
    super.key,
    required this.name,
    required this.avatarUrl,
  });

  final String name;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AutoLeadingButton(),
        if (avatarUrl.isNotEmpty)
          AvatarPopulated(url: avatarUrl)
        else
          AvatarFallback(name: name),
        const SizedBox(width: 30),
        Text(
          name,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
