import 'package:flutter/material.dart';

class ReportCarouselEmpty extends StatelessWidget {
  const ReportCarouselEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.primary.withOpacity(.3),
      ),
      alignment: Alignment.center,
      child: Text(
        'No image provided',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
