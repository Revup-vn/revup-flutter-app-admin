import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../cubit/login_cubit.dart';
import '../models/models.dart';

class LoginFormRx extends StatelessWidget {
  const LoginFormRx({
    super.key,
    required this.formKey,
    required this.size,
    required this.txtTheme,
  });

  final GlobalKey<FormBuilderState> formKey;
  final Size size;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.watch<LoginCubit>();
    final state = loginCubit.state;

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

    return FormBuilder(
      enabled: state.maybeWhen(
        empty: (_) => true,
        error: (_) => true,
        orElse: () => false,
      ),
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
                      empty: (val) =>
                          val ? Icons.visibility : Icons.visibility_off,
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
                  if (formKey.currentState?.saveAndValidate() ?? false) {
                    catching(
                      () => LoginAccount.fromJson(
                        formKey.currentState?.value ?? <String, dynamic>{},
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
    );
  }
}
