import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/users_bloc.dart';
import 'user_view.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            UsersBloc(context.read())..add(const UsersEvent.searched('')),
        child: const UsersView(),
      );
}
