import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../models/models.dart';
import '../cubit/report_detail_cubit.dart';
import '../widgets/widgets.dart';

class ReportDetailView extends StatelessWidget {
  const ReportDetailView({super.key, required this.data});

  final Report data;

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ReportDetailCubit, ReportDetailState>(
        listener: _onStateChanges,
        builder: (context, state) => ListView.separated(
          padding: const EdgeInsets.only(bottom: 30),
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return ReportTitle(
                  reportId: data.displayId,
                  tapBack: context.router.pop,
                );
              case 1:
                return ReportCarousel(
                  imgs: data.report.imgs
                      .where((e) => e.trim().isNotEmpty)
                      .toList(),
                );
              case 2:
                return ReportContent(
                  content: data.report.desc,
                  consumerName: data.cName,
                  providerAddress: data.pAddress,
                  providerName: data.pName,
                  amount: data.amount,
                );
              case 3:
                if (data.feedback != null) {
                  return FeedbackCard(
                    customerAvatar: data.cAvatar,
                    customerName: data.cName,
                    feedbackContent: data.feedback?.desc ?? '',
                    money: data.amount,
                    star: data.feedback?.rating ?? 0,
                  );
                } else {
                  return const SizedBox();
                }
              case 4:
                return ReportChangedStatusActions(
                  active: state.maybeMap(
                    orElse: () => false,
                    initial: (_) => true,
                    failed: (_) => true,
                  ),
                  onAccept: () => context.read<ReportDetailCubit>().save(
                        data.copyWith(
                          report: RepairReport.resolved(
                            category: data.report.category,
                            desc: data.report.desc,
                            imgs: data.report.imgs,
                            created: data.report.created,
                            resolved: DateTime.now(),
                            aId: context
                                .read<AuthenticateBloc>()
                                .state
                                .maybeMap(
                                  orElse: () => throw NullThrownError(),
                                  authenticated: (s) => s.authType.user.uuid,
                                ),
                          ),
                        ),
                      ),
                  showBanActions: state.showBanActions,
                  onBanConsumer: () => context.read<ReportDetailCubit>().ban(
                        data.cid,
                        isConsumer: true,
                      ),
                  onBanProvider: () => context.read<ReportDetailCubit>().ban(
                        data.pid,
                        isConsumer: false,
                      ),
                );
              default:
                throw NullThrownError();
            }
          },
          itemCount: 5,
          separatorBuilder: (_, __) => const SizedBox(
            height: 30,
          ),
        ),
      );

  void _onStateChanges(BuildContext context, ReportDetailState state) =>
      state.when(
        initial: (_) => unit,
        saved: (actions, message, isPop) => context
            .showSuccessBar<void>(
              content: Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
            .then(
              (_) => isPop
                  ? context.router.pop()
                  : context.read<ReportDetailCubit>().reset(),
            ),
        loading: (_, v) => context.showBlockDialog(dismissCompleter: v),
        failed: (_) => context
            .showErrorBar<void>(
              content: Text(
                'There is an error in the process! Please try again',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
            .then((_) => context.read<ReportDetailCubit>().reset()),
      );
}
