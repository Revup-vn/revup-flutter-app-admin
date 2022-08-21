import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../router/router.dart';
import '../../../protected.dart';
import '../widgets/widgets.dart';

class ProviderVerificationView extends StatelessWidget {
  const ProviderVerificationView({super.key});

  @override
  Widget build(BuildContext context) =>
      context.watch<ProviderVerificationCubit>().state.map(
            initial: (_) => const VerificationRequestEmpty(),
            empty: (_) => const VerificationRequestEmpty(),
            loading: (_) => const VerificationRequestLoading(),
            failed: (_) => VerificationRequestFailed(
              onRetry: () => context.read<ProviderVerificationCubit>().watch(),
            ),
            populated: (value) => VerificationRequestPopulated(
              infos: value.infos,
              onTileTap: (VerificationInfo a) => context.router.push(
                VerificationDetailRoute(data: a),
              ),
            ),
          );
}
