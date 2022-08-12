import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';

class ReportChangedStatusButton extends StatelessWidget {
  const ReportChangedStatusButton({
    super.key,
    required this.onAccept,
    required this.active,
  });

  final Function0<Future<void>> onAccept;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
                  'The resolved action is non-reversible.'
                  ' Do you want to resolve this report?',
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
                  onPressed: () => onAccept().then((_) => c.dismiss()),
                  child: const Text('Yes'),
                ),
              )
          : null,
      child: const Text(
        'Resolve this report',
      ),
    );
  }
}
