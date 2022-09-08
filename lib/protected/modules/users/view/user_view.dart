import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/users_bloc.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
            hintText: 'Enter here to search user!',
            border: OutlineInputBorder(),
          ),
          onChanged: (s) =>
              context.read<UsersBloc>().add(UsersEvent.searched(s.trim())),
        ),
        Text(context.watch<UsersBloc>().state.toString()),
      ],
    );
  }
}
