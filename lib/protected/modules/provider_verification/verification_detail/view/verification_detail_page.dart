import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';
import '../cubit/verification_detail_cubit.dart';
import 'verification_detail_view.dart';

class VerificationDetailPage extends StatelessWidget {
  const VerificationDetailPage({super.key, required this.data});
  final VerificationInfo data;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => VerificationDetailCubit(context.read()),
        child: VerificationDetailView(info: data),
      );
}
