import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class InformationCell extends StatelessWidget {
  const InformationCell({
    required this.icon,
    required this.number,
    required this.text,
    super.key,
  });

  final IconData icon;

  final int number;

  final String text;

  String _formatNumber(int number) {
    if (number.toString().length >= 10) {
      return NumberFormat.compact().format(number);
    } else {
      return NumberFormat.decimalPattern().format(number).replaceAll(',', ' ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 268,
      height: 163,
      padding: const EdgeInsets.only(top: 22, bottom: 22),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 24,
            backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(_formatNumber(number)),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 7),
          Text(text),
        ],
      ),
    );
  }
}
