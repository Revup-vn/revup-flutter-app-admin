import 'package:flutter/material.dart';

class DeleteAccountTile extends StatelessWidget {
  const DeleteAccountTile({super.key, required this.onDelete});
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Text(
              'By deleting your account, you will lose all your data',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          TextButton(
            onPressed: onDelete,
            child: Text(
              'Delete Account ...',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey.shade700,
                  ),
            ),
          )
        ],
      );
}
