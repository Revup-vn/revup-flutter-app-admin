import 'package:flutter/material.dart';

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
        IconButton(
          onPressed: tapBack,
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
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
