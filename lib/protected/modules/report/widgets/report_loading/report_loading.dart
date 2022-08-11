import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../../../../shared/shared.dart';
import 'report_card_loading.dart';

class ReportLoading extends StatelessWidget {
  const ReportLoading({super.key});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: context.shimmerBase,
        highlightColor: context.shimmerHightLight,
        child: ListView.builder(
          itemBuilder: (_, __) => const ReportCardLoading(),
          itemCount: 10,
          padding: const EdgeInsets.all(30),
        ),
      );
}
