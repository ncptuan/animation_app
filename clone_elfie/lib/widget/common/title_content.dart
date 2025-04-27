import 'package:flutter/material.dart';

import '../../style/style.dart';

class TitleContent extends StatelessWidget {
  final String? preIconImage;
  final String? title;
  final Widget? tailIcon;

  const TitleContent({
    super.key,
    this.preIconImage,
    this.title,
    this.tailIcon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (preIconImage != null)
              Image.asset(
                preIconImage!,
                width: 24,
                height: 24,
              ),
            const SizedBox(width: 8),
            Text(
              title ?? 'My Plan',
              style: theme.textTheme.displayLarge,
            ),
            const SizedBox(width: 8),
            tailIcon ??
                const Icon(
                  Icons.filter_list_rounded,
                  color: MyColors.blackColor,
                  size: 32,
                ),
          ],
        ),
      ],
    );
  }
}
