import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/dashboard_cubit.dart';
import '../widgets/widgets.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) =>
      context.watch<DashboardCubit>().state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: () => DashboardFailed(
              onRetry: context.read<DashboardCubit>().fetchData,
            ),
            populated: (
              newUsers,
              earnings,
              installations,
              totTrans,
              percents,
              userData,
            ) =>
                ListView(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.spaceBetween,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    InformationCell(
                      icon: Icons.person_add_alt_1,
                      number: newUsers,
                      text: 'Monthly New Users',
                    ),
                    InformationCell(
                      icon: Icons.attach_money_outlined,
                      number: earnings,
                      text: 'Monthly Earnings',
                    ),
                    InformationCell(
                      icon: Icons.rocket_launch,
                      number: installations,
                      text: 'Total Installation',
                    ),
                    InformationCell(
                      icon: Icons.sync,
                      number: totTrans,
                      text: 'Total Transactions',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runAlignment: WrapAlignment.spaceBetween,
                  runSpacing: 20,
                  spacing: 20,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 558),
                      child: CircleChart(
                        consumerPercent: percents.head.toDouble(),
                        providerPercent: percents.tail.toDouble(),
                      ),
                    ),
                    ActiveUsersCell(data: userData),
                  ],
                )
              ],
            ),
          );
}
