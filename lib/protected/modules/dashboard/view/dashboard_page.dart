import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/dashboard_cubit.dart';
import 'dashboard_view.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => DashboardCubit(
          context.read(),
          context.read(),
          context.read(),
        )..fetchData(),
        child: const DashboardView(),
      );
}
