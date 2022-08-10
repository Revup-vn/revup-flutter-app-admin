import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

class DoubleFieldTile extends StatelessWidget {
  const DoubleFieldTile({
    super.key,
    required this.firstField,
    required this.secondField,
    required this.enable,
  });

  final Tuple2<String, String> firstField;
  final Tuple2<String, String> secondField;
  final bool enable;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TextFormField(
              enabled: enable,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: firstField.head,
              ),
              initialValue: firstField.tail,
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: TextFormField(
              enabled: enable,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: secondField.head,
              ),
              initialValue: secondField.tail,
            ),
          ),
        ],
      );
}
