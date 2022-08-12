import 'package:flutter/material.dart';

class ReportImageError extends StatelessWidget {
  const ReportImageError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cs.error.withOpacity(.3),
      ),
      alignment: Alignment.center,
      child: Text(
        'No image provided',
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(color: cs.onError),
      ),
    );
  }
}
