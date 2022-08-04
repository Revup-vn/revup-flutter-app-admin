import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:revup_core/core.dart';

import '../../router/router.dart';
import '../../shared/shared.dart';
import '../login.dart';
import '../models/models.dart';

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
    final loginCubit = context.read<LoginCubit>();
    log(context.read<AuthenticateBloc>().state.toString());
    void onFieldSubmit() {
      if (formKey.currentState?.saveAndValidate() ?? false) {
        catching(
          () => LoginAccount.fromJson(
            formKey.currentState?.value ?? <String, dynamic>{},
          ),
        ).toOption().fold(
              () => context.showErrorBar<void>(
                content: Text(
                  'Invalid data Login',
                  style: txtTheme.bodyMedium,
                ),
              ),
              (a) => loginCubit.signIn(account: a),
            );
      }
    }

    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          state.when(
            empty: (_) => unit,
            loading: (isDone) =>
                context.showBlockDialog<void>(dismissCompleter: isDone),
            error: (str) => context.showErrorBar<void>(
              content: Text(
                'Error: $str',
                style: txtTheme.bodyMedium,
              ),
            ),
            success: () => context
                .showSuccessBar<void>(
                  content: Text(
                    'Verification Complete!',
                    style: txtTheme.bodyMedium,
                  ),
                )
                .then((_) => context.router.push(const HomeRoute())),
          );
        },
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.25, 0.75, 0.90, 1.0],
                colors: [
                  color,
                  color.brighten(),
                  color.brighten(33),
                  color.brighten(50),
                ],
              ),
            ),
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
                FormBuilder(
                  key: formKey,
                  child: SizedBox(
                    width: size.width / 2,
                    height: size.height / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FormBuilderTextField(
                          name: 'email',
                          onSubmitted: (_) => onFieldSubmit(),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.email(),
                          ]),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        FormBuilderTextField(
                          name: 'password',
                          onSubmitted: (_) => onFieldSubmit(),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            (val) => val == null ||
                                    RegExp(
                                          '^(?=.*[a-z])'
                                          '(?=.*[A-Z])'
                                          r'(?=.*[!@#\$%\^&\*]).{6,}$',
                                        ).stringMatch(val)?.length !=
                                        val.length
                                ? 'Please give a more stronger password'
                                : null,
                          ]),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: 'Password',
                            prefixIcon: const Icon(Icons.password),
                            suffixIcon: IconButton(
                              onPressed: loginCubit.toggle,
                              icon: Icon(
                                state.maybeWhen(
                                  orElse: () => Icons.visibility_off,
                                  empty: (val) => val
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                          obscureText: state.maybeWhen(
                            empty: (val) => val,
                            orElse: () => true,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: onFieldSubmit,
                          child: Text(
                            'Login with email',
                            style: txtTheme.bodyText1,
                          ),
                        ),
                        Offstage(
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState?.saveAndValidate() ??
                                  false) {
                                catching(
                                  () => LoginAccount.fromJson(
                                    formKey.currentState?.value ??
                                        <String, dynamic>{},
                                  ),
                                ).toOption().fold(
                                      () => context.showErrorBar<void>(
                                        content: Text(
                                          'Invalid data',
                                          style: txtTheme.bodyMedium,
                                        ),
                                      ),
                                      (a) => loginCubit.signUp(account: a),
                                    );
                              }
                            },
                            child: Text(
                              'Sign Up',
                              style: txtTheme.bodyText1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
