import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../../extension_context.dart';
import 'card_loading.dart';

class ListLoading extends StatelessWidget {
  const ListLoading({super.key});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: context.shimmerBase,
        highlightColor: context.shimmerHightLight,
        child: ListView.builder(
          itemBuilder: (_, __) => const CardLoading(),
          itemCount: 10,
          padding: const EdgeInsets.all(30),
          physics: const NeverScrollableScrollPhysics(),
        ),
      );
}
