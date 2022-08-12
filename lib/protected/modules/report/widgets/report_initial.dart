import 'package:flutter/material.dart';

class ReportInitial extends StatelessWidget {
  const ReportInitial({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Please wait, we are crunching data just for you!',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child: CircularProgressIndicator.adaptive(),
          ),
        ],
      );
}
