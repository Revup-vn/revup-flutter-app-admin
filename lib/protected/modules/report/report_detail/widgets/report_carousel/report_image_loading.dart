import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../../../../../shared/shared.dart';

class ReportImageLoading extends StatelessWidget {
  const ReportImageLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: context.shimmerBase,
        highlightColor: context.shimmerHightLight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey,
          ),
          alignment: Alignment.center,
          child: const Text(
            '',
          ),
        ),
      );
}
