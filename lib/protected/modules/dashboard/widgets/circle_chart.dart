import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

class CircleChart extends StatelessWidget {
  const CircleChart({
    required this.consumerPercent,
    required this.providerPercent,
    super.key,
  });

  final double consumerPercent;
  final double providerPercent;

  List<PieChartSectionData> generateSections(
    double consumerPercent,
    double providerPercent,
    Color consumer,
    Color provider,
  ) {
    return [
      PieChartSectionData(
        color: consumer,
        value: consumerPercent,
        radius: 20,
        title: '',
      ),
      PieChartSectionData(
        color: provider,
        value: providerPercent,
        radius: 20,
        title: '',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) => Container(
        width: 558,
        height: 340,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(6),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 31, right: 47),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 160,
                height: 160,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    PieChart(
                      PieChartData(
                        startDegreeOffset: 270,
                        sectionsSpace: 0,
                        centerSpaceRadius: 60,
                        sections: generateSections(
                          consumerPercent,
                          providerPercent,
                          Theme.of(context).colorScheme.surfaceTint,
                          Theme.of(context).colorScheme.surfaceVariant,
                        ),
                      ),
                    ),
                    const Text(
                      'User Type',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _CircleChartBottomInfo(
                    text: 'Consumer',
                    color: Theme.of(context).colorScheme.surfaceTint,
                    totalPercent: consumerPercent,
                  ),
                  const SizedBox(width: 50),
                  _CircleChartBottomInfo(
                    text: 'Provider',
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    totalPercent: providerPercent,
                    haveIncreased: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

class _CircleChartBottomInfo extends StatelessWidget {
  const _CircleChartBottomInfo({
    required this.text,
    required this.color,
    required this.totalPercent,
    this.haveIncreased = true,
  });

  final String text;

  final Color color;

  final double totalPercent;

  final bool haveIncreased;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(backgroundColor: color, radius: 5),
            const SizedBox(width: 8),
            Text(
              text,
            ),
          ],
        ),
        const SizedBox(width: 20),
        Text(
          '$totalPercent%',
        ),
      ],
    );
  }
}
