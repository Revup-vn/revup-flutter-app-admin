import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

import '../../models/report.dart';
import 'report_card_populated.dart';

class ReportPopulated extends StatelessWidget {
  const ReportPopulated({
    super.key,
    required this.reports,
    required this.onTileTap,
  });

  final List<Report> reports;

  final Function1<Report, Future<void>> onTileTap;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (_, i) => ReportCardPopulated(
          data: reports[i],
          status: reports[i].report.map(
                unresolved: (_) => 'UNRESOLVED',
                resolved: (_) => 'RESOLVED',
                canceled: (_) => 'CANCELED',
              ),
          onTap: reports[i]
              .report
              .mapOrNull(unresolved: (v) => () => onTileTap(reports[i])),
        ),
        itemCount: 10,
        padding: const EdgeInsets.all(30),
      );
}
