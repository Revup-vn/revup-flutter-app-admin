import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';

class VerificationButton extends StatelessWidget {
  const VerificationButton({
    super.key,
    required this.onAccept,
    required this.active,
    required this.buttonTitle,
  });

  final Function0<Future<void>> onAccept;
  final bool active;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        onPressed: active
            ? () => context.showFlashDialog<void>(
                  title: Column(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        size: 50,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      const Text('WARNING!'),
                    ],
                  ),
                  content: const Text(
                    'The action is non-reversible.'
                    ' Do you want to process this action?',
                    maxLines: 2,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                  negativeActionBuilder: (_, c, __) => TextButton(
                    onPressed: () => c.dismiss(),
                    child: Text(
                      'No',
                      style: Theme.of(context).textTheme.button?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(.5),
                          ),
                    ),
                  ),
                  positiveActionBuilder: (_, c, __) => TextButton(
                    onPressed: () => c.dismiss().then((_) => onAccept()),
                    child: const Text('Yes'),
                  ),
                )
            : null,
        child: Text(
          buttonTitle,
        ),
      );
}
