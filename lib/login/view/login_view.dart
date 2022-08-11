import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../router/router.dart';
import '../../shared/app_decoration.dart';
import '../login.dart';
import '../widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final color = Theme.of(context).colorScheme.primaryContainer;
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: _onStateChanges,
        child: Container(
          decoration: appDecoration(color),
          padding: EdgeInsets.fromLTRB(
            size.width / 10,
            size.height / 10,
            size.width / 10,
            0,
          ),
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Welcome to Revup Admin Page',
                      style: txtTheme.headline3,
                    ),
                  ),
                  const Icon(
                    Icons.supervised_user_circle_outlined,
                    size: 200,
                  ),
                ],
              ),
              Text(
                'Please login to your account to use the app',
                style: txtTheme.bodyLarge,
              ),
              LoginFormRx(
                formKey: formKey,
                size: size,
                txtTheme: txtTheme,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onStateChanges(BuildContext context, LoginState state) => state.when(
        empty: (_) => unit,
        loading: (isDone) =>
            context.showBlockDialog<void>(dismissCompleter: isDone),
        error: (str) => context.showErrorBar<void>(
          content: Text(
            'Error: $str',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        success: () => context
            .showSuccessBar<void>(
              content: Text(
                'Verification Complete!',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
            .then(
              (_) => context.router.pushAndPopUntil(
                const HomeRoute(),
                predicate: (_) => true,
              ),
            ),
      );
}
