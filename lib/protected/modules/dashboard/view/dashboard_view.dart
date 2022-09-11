import 'package:flutter/material.dart';

import '../widgets/active_user_cell.dart';
import '../widgets/circle_chart.dart';
import '../widgets/information_cell.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.spaceBetween,
            spacing: 20,
            runSpacing: 20,
            children: const [
              InformationCell(
                icon: Icons.person_add_alt_1,
                number: 100,
                text: 'Monthly New Users',
              ),
              InformationCell(
                icon: Icons.attach_money_outlined,
                number: 1000,
                text: 'Monthly Earnings',
              ),
              InformationCell(
                icon: Icons.rocket_launch,
                number: 100,
                text: 'Total Installation',
              ),
              InformationCell(
                icon: Icons.sync,
                number: 100,
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
                child: const CircleChart(
                  consumerPercent: 80,
                  providerPercent: 20,
                ),
              ),
              const ActiveUsersCell(),
            ],
          )
        ],
      );
}
