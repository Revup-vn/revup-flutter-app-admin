import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../home/widgets/widgets.dart';
import '../../../shared/shared.dart';
import '../widgets/widgets.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticateBloc>().state.maybeMap(
          orElse: () => throw NullThrownError(),
          authenticated: (value) => value.authType.user,
        );
    return ListView.separated(
      padding: const EdgeInsets.all(30),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        switch (index) {
          case 0:
            return AvatarEditingTile(
              avatar: user.avatarUrl.isNotEmpty
                  ? AvatarFallback(name: user.lastName)
                  : AvatarPopulated(
                      url: user.avatarUrl,
                    ),
              onRemove: context.showUnimplementedDialog,
              onUpload: context.showUnimplementedDialog,
            );
          case 1:
            return AccountForm(
              valueForFields: [
                tuple2(user.firstName, user.lastName),
                tuple2(user.email, user.phone)
              ],
            );
          case 2:
            return DeleteAccountTile(onDelete: context.showUnimplementedDialog);
          case 3:
            return SaveChangesTile(onSave: context.showUnimplementedDialog);
          default:
            throw NullThrownError();
        }
      },
      separatorBuilder: (_, __) => const Divider(
        thickness: 1,
        height: 60,
      ),
      itemCount: 4,
    );
  }
}
