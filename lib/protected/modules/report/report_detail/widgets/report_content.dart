import 'package:flutter/material.dart';
import 'package:revup_core/core.dart';

class ReportContent extends StatelessWidget {
  const ReportContent({
    super.key,
    required this.content,
    required this.consumerName,
    required this.providerName,
    required this.providerAddress,
    required this.amount,
  });

  final String consumerName;
  final String providerName;
  final String providerAddress;
  final String content;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Text(
      '''
      Consumer: $consumerName
      Provider: $providerName at $providerAddress
      Total amount: ${context.formatMoney(amount)}

      ${content.trim().isEmpty ? 'No description was provided' : content}
      ''',
      softWrap: true,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),
    );
  }
}
