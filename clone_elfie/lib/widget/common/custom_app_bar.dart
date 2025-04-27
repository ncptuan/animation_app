import 'package:flutter/material.dart';

import '../widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onClickAddButton;

  const CustomAppBar({super.key, this.onClickAddButton});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: null,
      title: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // Handle menu action
            },
          ),
          const SizedBox(width: 8),
          PointWidget(value: "6,312", onTap: () {}),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.alarm, color: Colors.black),
          onPressed: () {
            // Handle notifications action
          },
        ),
        IconButton(
          icon: const Icon(Icons.message, color: Colors.black),
          onPressed: () {
            // Handle notifications action
          },
        ),
        IconButton(
          icon: const Icon(Icons.add_circle_outline, color: Colors.black),
          onPressed: onClickAddButton,
        ),
      ],
    );
  }
}
