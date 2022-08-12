import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../router/router.dart';
import '../report.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: context.watch<ReportCubit>().state.map(
              initial: (_) => const ReportInitial(),
              empty: (_) => const ReportEmpty(),
              loading: (_) => const ReportLoading(),
              failed: (_) => ReportFailed(
                onRetry: () => context.read<ReportCubit>().watch(),
              ),
              populated: (value) => ReportPopulated(
                reports: value.records,
                onTileTap: (Report a) => context.router.push<void>(
                  ReportDetailRoute(report: a),
                ),
              ),
            ),
      );
}
