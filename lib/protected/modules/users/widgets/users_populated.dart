import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:revup_core/core.dart';

import '../../../shared/shared.dart';

class UsersPopulated extends StatelessWidget {
  const UsersPopulated({
    super.key,
    required this.users,
    required this.checkUserAllowable,
    required this.banUser,
    required this.unBanUser,
  });

  final List<AppUser> users;
  final Function1<AppUser, bool> checkUserAllowable;
  final Function1<String, Future<bool>> banUser;
  final Function1<String, Future<bool>> unBanUser;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (_, i) {
          final user = users[i];
          final isActive = checkUserAllowable(user);
          return CardPopulated(
            avatarUrl: user.avatarUrl,
            createdDate: user.createdTime,
            desc: '''
Email: ${user.email.isEmpty ? 'Not provided' : user.email}
Phone Numbers: ${user.phone} 
${isActive ? '' : 'Banned To: ${user.map(
                    consumer: (c) => context
                        .formatDate(c.bannedValidatedDate ?? DateTime.now()),
                    provider: (p) =>
                        context.formatDate(p.inactiveTo ?? DateTime.now()),
                    admin: (_) => '',
                  )}'}
''',
            user: '${user.firstName} ${user.lastName}',
            status: isActive ? 'ACTIVE' : 'BANNED',
            onTap: () => context.showFlashDialog<void>(
              title: Column(
                children: [
                  Icon(
                    isActive ? Icons.person_off : Icons.person_outline,
                    size: 50,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  const Text('WARNING!'),
                ],
              ),
              content: Text(
                'The action is non-reversible.'
                ' Do you want to ${isActive ? "ban" : "un-ban"} this user?',
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
              negativeActionBuilder: (_, c, __) => TextButton(
                onPressed: () => c.dismiss(),
                child: Text(
                  'No',
                  style: Theme.of(context).textTheme.button?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(.5),
                      ),
                ),
              ),
              positiveActionBuilder: (_, c, __) => TextButton(
                onPressed: () => c.dismiss().then(
                      (_) =>
                          (isActive ? banUser(user.uuid) : unBanUser(user.uuid))
                              .then(
                        (value) => value
                            ? context.showSuccessBar<void>(
                                content: const Text('Saved Successfully!'),
                              )
                            : context.showErrorBar<void>(
                                content: const Text(
                                  'An error occurred, please try again!',
                                ),
                              ),
                      ),
                    ),
                child: const Text('Yes'),
              ),
            ),
          );
        },
        itemCount: users.length,
        padding: const EdgeInsets.all(30),
      );
}
