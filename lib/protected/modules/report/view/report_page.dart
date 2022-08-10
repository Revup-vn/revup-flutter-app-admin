import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/report_cubit.dart';
import 'report_view.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ReportCubit(
          context.read(),
          context.read(),
        ),
        child: const ReportView(),
      );
}
