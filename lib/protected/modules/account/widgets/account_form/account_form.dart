import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'double_field_tile.dart';

class AccountForm extends StatelessWidget {
  const AccountForm({super.key, required this.valueForFields});

  final List<Tuple2<String, String>> valueForFields;

  static final fields = [
    tuple2('First Name', 'Last Name'),
    tuple2('Email', 'Phone Number')
  ];

  @override
  Widget build(BuildContext context) => ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => DoubleFieldTile(
          firstField: tuple2(fields[index].head, valueForFields[index].head),
          secondField: tuple2(fields[index].tail, valueForFields[index].tail),
          enable: false,
        ),
        separatorBuilder: (_, __) => const Divider(thickness: 1, height: 60),
        itemCount: 2,
      );
}
