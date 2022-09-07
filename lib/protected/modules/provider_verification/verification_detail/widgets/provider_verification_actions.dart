import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

import '../../../../shared/verification_button.dart';

class ProviderVerificationActions extends StatelessWidget {
  const ProviderVerificationActions({
    super.key,
    required this.onAccept,
    required this.active,
    required this.onReVerify,
    required this.reverifyStatus,
  });

  final Function0<Future<void>> onAccept;
  final Function0<Future<void>> onReVerify;
  final bool reverifyStatus;
  final bool active;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!reverifyStatus)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: VerificationButton(
                onAccept: onReVerify,
                active: active,
                buttonTitle: 'Need to update info',
              ),
            ),
          VerificationButton(
            onAccept: onAccept,
            active: active,
            buttonTitle: 'Verify',
          ),
        ],
      );
}
