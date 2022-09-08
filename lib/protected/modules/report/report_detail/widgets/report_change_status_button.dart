import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

import '../../../../shared/widgets/verification_button.dart';

class ReportChangedStatusActions extends StatelessWidget {
  const ReportChangedStatusActions({
    super.key,
    required this.onAccept,
    required this.active,
    required this.onBanProvider,
    required this.onBanConsumer,
    required this.showBanActions,
  });

  final Function0<Future<void>> onAccept;
  final Function0<Future<void>> onBanProvider;
  final Function0<Future<void>> onBanConsumer;
  final bool active;
  final Tuple2<bool, bool> showBanActions;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showBanActions.head)
            VerificationButton(
              onAccept: onBanConsumer,
              active: active,
              buttonTitle: 'Ban Consumer',
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: VerificationButton(
              onAccept: onAccept,
              active: active,
              buttonTitle: 'Resolve this report',
            ),
          ),
          if (showBanActions.tail)
            VerificationButton(
              onAccept: onBanProvider,
              active: active,
              buttonTitle: 'Ban Provider',
            ),
        ],
      );
}
