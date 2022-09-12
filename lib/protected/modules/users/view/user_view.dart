import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              runSpacing: 20,
              spacing: 30,
              children: [
                FilterChip(
                  selected: context.select<UsersBloc, bool>(
                    (v) => v.state.criterion
                        .get(FilterCriteria.Provider)
                        .getOrElse(() => false),
                  ),
                  label: const Text('Provider'),
                  onSelected: (s) => context.read<UsersBloc>().add(
                        UsersEvent.changeCriteria(
                          tuple2(FilterCriteria.Provider, s),
                        ),
                      ),
                ),
                FilterChip(
                  selected: context.select<UsersBloc, bool>(
                    (v) => v.state.criterion
                        .get(FilterCriteria.Consumer)
                        .getOrElse(() => false),
                  ),
                  label: const Text('Consumer'),
                  onSelected: (s) => context.read<UsersBloc>().add(
                        UsersEvent.changeCriteria(
                          tuple2(FilterCriteria.Consumer, s),
                        ),
                      ),
                ),
                FilterChip(
                  selected: context.select<UsersBloc, bool>(
                    (v) => v.state.criterion
                        .get(FilterCriteria.Active)
                        .getOrElse(() => false),
                  ),
                  label: const Text('Active'),
                  onSelected: (s) => context.read<UsersBloc>().add(
                        UsersEvent.changeCriteria(
                          tuple2(FilterCriteria.Active, s),
                        ),
                      ),
                ),
                FilterChip(
                  selected: context.select<UsersBloc, bool>(
                    (v) => v.state.criterion
                        .get(FilterCriteria.Banned)
                        .getOrElse(() => false),
                  ),
                  label: const Text('Banned'),
                  onSelected: (s) => context.read<UsersBloc>().add(
                        UsersEvent.changeCriteria(
                          tuple2(FilterCriteria.Banned, s),
                        ),
                      ),
                ),
              ],
            ),
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
