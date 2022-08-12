import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../../../shared/shared.dart';
import '../widgets.dart';

class AvatarLoading extends StatelessWidget {
  const AvatarLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.shimmerBase,
      highlightColor: context.shimmerHightLight,
      child: const CircleAvatar(
        maxRadius: kAvatarMaxRadius,
        minRadius: kAvatarMinRadius,
      ),
    );
  }
}
