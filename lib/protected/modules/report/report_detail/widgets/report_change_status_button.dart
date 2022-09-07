import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

import '../../../../shared/widgets/verification_button.dart';

class ReportChangedStatusButton extends StatelessWidget {
  const ReportChangedStatusButton({
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
        buttonTitle: 'Resolve this report',
      );
}
