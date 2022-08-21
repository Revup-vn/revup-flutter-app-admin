import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

import '../../../shared/shared.dart';
import '../models/models.dart';

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
        itemBuilder: (_, i) => CardPopulated(
          avatarUrl: reports[i].cAvatar,
          createdDate: reports[i].report.created,
          desc: reports[i].report.desc,
          user: reports[i].cName,
          status: reports[i].report.map(
                unresolved: (_) => 'UNRESOLVED',
                resolved: (_) => 'RESOLVED',
                canceled: (_) => 'CANCELED',
              ),
          onTap: reports[i]
              .report
              .mapOrNull(unresolved: (v) => () => onTileTap(reports[i])),
        ),
        itemCount: reports.length,
        padding: const EdgeInsets.all(30),
      );
}
