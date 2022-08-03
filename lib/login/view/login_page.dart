import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/login_cubit.dart';
import 'login_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<LoginCubit>(
        create: (_) => LoginCubit(context.read()),
        child: LoginView(formKey: GlobalKey()),
      );
}
