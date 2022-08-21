import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../protected.dart';
import 'provider_verification_view.dart';

class ProviderVerificationPage extends StatelessWidget {
  const ProviderVerificationPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ProviderVerificationCubit(
          context.read(),
        )..watch(),
        child: const ProviderVerificationView(),
      );
}
