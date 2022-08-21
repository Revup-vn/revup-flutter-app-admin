import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';

import '../cubit/verification_detail_cubit.dart';
import '../widgets/widgets.dart';

class VerificationDetailView extends StatelessWidget {
  const VerificationDetailView({super.key, required this.info});

  final VerificationInfo info;

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<VerificationDetailCubit, VerificationDetailState>(
        listener: _onStateChanges,
        builder: (context, state) => ListView.separated(
          padding: const EdgeInsets.only(bottom: 30),
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return VerificationDetailHeader(
                  avatarUrl: info.avatar,
                  name: info.name,
                );
              case 1:
                return VerificationIdImageDisplay(
                  url: info.idImg,
                );
              case 2:
                return ProviderDetail(
                  idCardNum: info.idCardNum,
                  phone: info.phone,
                  dob: info.dob,
                  address: info.address,
                  email: info.email,
                  created: info.created,
                );

              case 3:
                return Align(
                  child: ProviderVerificationButton(
                    active: state.maybeMap(
                      orElse: () => false,
                      initial: (_) => true,
                      failed: (_) => true,
                    ),
                    onAccept: () =>
                        context.read<VerificationDetailCubit>().save(
                              info.id,
                            ),
                  ),
                );
              default:
                throw NullThrownError();
            }
          },
          itemCount: 4,
          separatorBuilder: (_, __) => const SizedBox(
            height: 30,
          ),
        ),
      );

  void _onStateChanges(BuildContext context, VerificationDetailState state) =>
      state.when(
        initial: () => unit,
        saved: (message) => context
            .showSuccessBar<void>(
              content: Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
            .then((_) => context.router.pop()),
        loading: (v) => context.showBlockDialog(dismissCompleter: v),
        failed: () => context
            .showErrorBar<void>(
              content: Text(
                'There is an error when saving the report! Please try again',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
            .then((_) => context.read<VerificationDetailCubit>().reset()),
      );
}
