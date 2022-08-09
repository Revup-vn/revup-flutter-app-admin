import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AvatarLoading extends StatelessWidget {
  const AvatarLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).colorScheme.secondary.withAlpha(50),
      highlightColor: Theme.of(context).colorScheme.secondary.withAlpha(20),
      child: const CircleAvatar(
        maxRadius: 50,
        minRadius: 30,
      ),
    );
  }
}
