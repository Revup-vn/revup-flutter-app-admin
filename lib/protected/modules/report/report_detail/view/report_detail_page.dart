import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';
import '../cubit/report_detail_cubit.dart';
import 'report_detail_view.dart';

class ReportDetailPage extends StatelessWidget {
  const ReportDetailPage({super.key, required this.report});

  final Report report;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ReportDetailCubit(
          context.read(),
          context.read(),
          report.cid,
          report.pid,
        ),
        child: ReportDetailView(data: report),
      );
}
