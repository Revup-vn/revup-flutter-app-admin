import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

// const Map<int, List<double>> activeUsersData = <int, List<double>>{
//   1: [200, 310],
//   2: [305, 450],
//   3: [270, 390],
//   4: [210, 310],
//   5: [100, 160],
//   6: [300, 450],
//   7: [210, 310],
//   8: [150, 210],
//   9: [210, 310],
//   10: [210, 308],
// };

class ActiveUsersCell extends StatelessWidget {
  const ActiveUsersCell({super.key, required this.data});
  final Map<int, List<double>> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 558,
      height: 340,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 32, right: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Active Users',
                ),
                const SizedBox(height: 24),
                _BarChart(data),
                const SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    NameAndColorRow(
                      color: Theme.of(context).colorScheme.surfaceTint,
                      text: 'Users',
                    ),
                    const SizedBox(width: 36),
                    NameAndColorRow(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      text: 'New Users',
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const _DetailsColumn(
          //   daily: 23,
          //   monthly: 233,
          //   annual: 232323,
          // ),
        ],
      ),
    );
  }
}

class _BarChart extends StatelessWidget {
  const _BarChart(this.activeUsersData);
  final Map<int, List<double>> activeUsersData;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 191, maxWidth: 366),
      child: BarChart(
        BarChartData(
          maxY: 15,
          alignment: BarChartAlignment.center,
          barTouchData: BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            show: true,
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
          ),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (_) => FlLine(
              color: Colors.grey.shade50,
              strokeWidth: 1,
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border(
              top: BorderSide(color: Colors.grey.shade50),
            ),
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barsSpace: 20,
              barRods: [
                ...activeUsersData.entries
                    .map(
                      (MapEntry<int, List<double>> e) => BarChartRodData(
                        toY: e.value.first,
                        width: 13,
                        color: Theme.of(context).colorScheme.surfaceTint,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        backDrawRodData: BackgroundBarChartRodData(
                          show: true,
                          toY: e.value.last,
                          color: Theme.of(context).colorScheme.surfaceVariant,
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class _DetailsColumn extends StatelessWidget {
//   const _DetailsColumn({
//     required this.annual,
//     required this.monthly,
//     required this.daily,
//   });

//   final int annual;

//   final int monthly;

//   final int daily;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 92,
//       height: 301,
//       decoration: BoxDecoration(
//         color: Theme.of(context).colorScheme.surfaceVariant,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           const _NumberAndTitle(
//             title: 'Annual',
//             number: 232323,
//           ),
//           Divider(color: Theme.of(context).colorScheme.surfaceTint),
//           const _NumberAndTitle(
//             title: 'Mounthly',
//             number: 233,
//           ),
//           Divider(color: Theme.of(context).colorScheme.surfaceTint),
//           const _NumberAndTitle(
//             title: 'Daily',
//             number: 23,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _NumberAndTitle extends StatelessWidget {
//   const _NumberAndTitle({
//     required this.title,
//     required this.number,
//   });

//   final String title;

//   final int number;

//   String _formatNumber(int number) {
//     if (number.toString().length >= 10) {
//       return NumberFormat.compact().format(number);
//     } else {
//       return NumberFormat.decimalPattern().format(number).replaceAll(',', ' ');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Text(_formatNumber(number)),
//         const SizedBox(height: 7.6),
//         Text(title),
//       ],
//     );
//   }
// }

class NameAndColorRow extends StatelessWidget {
  const NameAndColorRow({
    required this.color,
    required this.text,
    super.key,
  });

  final Color color;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CircleAvatar(radius: 5, backgroundColor: color),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
