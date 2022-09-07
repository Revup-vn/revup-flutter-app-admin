import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

import '../../../shared/shared.dart';
import '../models/models.dart';

class VerificationRequestPopulated extends StatelessWidget {
  const VerificationRequestPopulated({
    super.key,
    required this.infos,
    required this.onTileTap,
  });

  final List<VerificationInfo> infos;

  final Function1<VerificationInfo, Future<void>> onTileTap;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (_, i) => CardPopulated(
          avatarUrl: infos[i].avatar,
          createdDate: infos[i].created,
          desc: infos[i].bio,
          user: infos[i].name,
          status:
              infos[i].needToReVerify ? 'RE-VERIFY-NEEDED' : 'NEED TO VERIFY',
          onTap: () => onTileTap(infos[i]),
        ),
        itemCount: infos.length,
        padding: const EdgeInsets.all(30),
      );
}
