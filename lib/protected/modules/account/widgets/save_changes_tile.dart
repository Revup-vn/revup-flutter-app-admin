import 'package:flutter/material.dart';

class SaveChangesTile extends StatelessWidget {
  const SaveChangesTile({super.key, required this.onSave});
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).colorScheme.tertiary,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).colorScheme.onTertiary,
            ),
          ),
          onPressed: onSave,
          child: const Text('Save changes'),
        ),
      );
}
