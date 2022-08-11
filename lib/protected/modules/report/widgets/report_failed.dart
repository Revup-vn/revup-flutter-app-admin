import 'package:flutter/material.dart';

class ReportFailed extends StatelessWidget {
  const ReportFailed({super.key, required this.onRetry});
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Sorry we cannot connect to the server. You can come back later'
              ' or click the button below to fetch the data again!',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).errorColor),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: OutlinedButton(
              onPressed: onRetry,
              child: const Text(
                'Try again',
              ),
            ),
          ),
        ],
      );
}
