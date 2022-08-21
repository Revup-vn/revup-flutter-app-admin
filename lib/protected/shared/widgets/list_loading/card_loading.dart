import 'package:flutter/material.dart';

import '../avatar/avatar.dart';

class CardLoading extends StatelessWidget {
  const CardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(),
      ),
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              visualDensity: VisualDensity.comfortable,
              leading: const CircleAvatar(
                maxRadius: kAvatarMaxRadius,
                minRadius: kAvatarMinRadius,
              ),
              title: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  height: 14,
                  width: 200,
                ),
              ),
              subtitle: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(2),
                ),
                height: 14,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
