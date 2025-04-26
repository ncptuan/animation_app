import 'package:flutter/material.dart';

import '../../style/style.dart';

class PointWidget extends StatelessWidget {
  final String? value;
  final VoidCallback? onTap;

  const PointWidget({
    super.key,
    this.value,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: MyColors.blackColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/elfie_logo.png',
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 5),
            Text(value ?? "0.05", style: theme.primaryTextTheme.bodyMedium),
            const SizedBox(width: 2),
            if (onTap != null)
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: MyColors.whiteColor,
              ),
          ],
        ),
      ),
    );
  }
}
