import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class ReportTitle extends StatelessWidget {
  const ReportTitle({
    super.key,
    required this.tapBack,
    required this.reportId,
  });

  final VoidCallback tapBack;
  final String reportId;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const AutoLeadingButton(),
        Expanded(
          child: Text(
            'Report: $reportId',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
