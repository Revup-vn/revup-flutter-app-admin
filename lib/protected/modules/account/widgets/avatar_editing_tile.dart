import 'package:flutter/material.dart';

class AvatarEditingTile extends StatelessWidget {
  const AvatarEditingTile({
    super.key,
    required this.avatar,
    required this.onRemove,
    required this.onUpload,
  });

  final Widget avatar;
  final VoidCallback onRemove;
  final VoidCallback onUpload;
  @override
  Widget build(BuildContext context) => LimitedBox(
        maxHeight: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: avatar),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: onUpload,
                child: const Text('Upload'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: OutlinedButton(
                onPressed: onRemove,
                child: const Text('Remove'),
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
      );
}
