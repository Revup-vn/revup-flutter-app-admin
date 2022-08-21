import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../shared/verification_button.dart';

class ProviderVerificationButton extends StatelessWidget {
  const ProviderVerificationButton({
    super.key,
    required this.onAccept,
    required this.active,
  });

  final Function0<Future<void>> onAccept;
  final bool active;

  @override
  Widget build(BuildContext context) => VerificationButton(
        onAccept: onAccept,
        active: active,
        buttonTitle: 'Verify',
      );
}
