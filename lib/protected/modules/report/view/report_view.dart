import 'package:flutter/material.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.amber,
          )),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      );
}
