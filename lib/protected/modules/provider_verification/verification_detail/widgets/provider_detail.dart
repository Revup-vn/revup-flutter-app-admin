import 'package:flutter/material.dart';
import 'package:revup_core/core.dart';

class ProviderDetail extends StatelessWidget {
  const ProviderDetail({
    super.key,
    required this.idCardNum,
    required this.phone,
    required this.dob,
    required this.address,
    required this.email,
    required this.created,
  });

  final String idCardNum;
  final String phone;
  final DateTime dob;
  final String address;
  final String email;
  final DateTime created;

  @override
  Widget build(BuildContext context) => Text(
        '''
Identification card numbers: $idCardNum
Phone: $phone
Date of birth: ${context.formatDate(dob)}
Address: $address
Email: $email
Created at: ${context.formatDate(created)}
          ''',
        style: Theme.of(context).textTheme.bodyLarge,
      );
}
