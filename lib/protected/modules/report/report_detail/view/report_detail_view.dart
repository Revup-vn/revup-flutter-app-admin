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
                  reportId: data.id,
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
                );
              case 3:
                return FeedbackCard(
                  customerAvatar: data.cAvatar,
                  customerName: data.cName,
                  feedbackContent: data.feedback.desc,
                  money: data.amount,
                  star: data.feedback.rating,
                );
              case 4:
                return Align(
                  child: ReportChangedStatusButton(
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
        initial: () => unit,
        saved: (message) => context
            .showSuccessBar<void>(
              content: Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
            .then((_) => context.router.pop()),
        loading: (v) => context.showBlockDialog(dismissCompleter: v),
        failed: () => context
            .showErrorBar<void>(
              content: Text(
                'There is an error when saving the report! Please try again',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
            .then((_) => context.read<ReportDetailCubit>().reset()),
      );
}
