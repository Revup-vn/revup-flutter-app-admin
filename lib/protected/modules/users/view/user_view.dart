import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/users_bloc.dart';
import '../widgets/widgets.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Enter here to search user ⌨️',
              border: OutlineInputBorder(),
              labelText: 'Search term',
            ),
            onChanged: (s) =>
                context.read<UsersBloc>().add(UsersEvent.searched(s.trim())),
          ),
          Expanded(
            child: context.watch<UsersBloc>().state.map(
                  empty: (s) => UsersEmpty(term: s.term),
                  loading: (_) => const UsersLoading(),
                  error: (_) => UsersFailed(
                    onRetry: () => context.read<UsersBloc>().reset(),
                  ),
                  populated: (s) => UsersPopulated(
                    users: s.users,
                    checkUserAllowable:
                        context.read<UsersBloc>().isUserFreeOfViolation,
                    banUser: context.read<UsersBloc>().ban,
                    unBanUser: context.read<UsersBloc>().unBan,
                  ),
                ),
          ),
        ],
      );
}
