import 'package:flutter/material.dart';

import 'package:revup_core/core.dart';

import '../../../../home/widgets/widgets.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({
    super.key,
    required this.customerAvatar,
    required this.customerName,
    required this.star,
    required this.feedbackContent,
    required this.money,
  });

  final String customerAvatar;
  final String customerName;
  final int star;
  final String feedbackContent;
  final int money;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(.3),
        ),
      ),
      child: ListTile(
        dense: false,
        visualDensity: VisualDensity.comfortable,
        contentPadding: const EdgeInsets.all(10),
        leading: customerAvatar.isEmpty
            ? AvatarFallback(name: customerName)
            : AvatarPopulated(url: customerAvatar),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Ratings:'),
            ...List.generate(
              5,
              (i) => Icon(
                Icons.star,
                color: i <= star - 1 ? Colors.yellow.shade700 : Colors.grey,
              ),
            ),
          ],
        ),
        subtitle: Text(feedbackContent),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text(context.formatMoney(money))],
        ),
      ),
    );
  }
}
