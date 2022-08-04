import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    log(context.read<AuthenticateBloc>().state.toString());

    return const Scaffold(
      body: Center(child: Text('Login Success')),
    );
  }
}
