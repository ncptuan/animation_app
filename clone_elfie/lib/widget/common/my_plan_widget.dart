import 'package:flutter/material.dart';

import '../../style/style.dart';
import 'common.dart';

class MyPlanWidget extends StatelessWidget {
  const MyPlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'My Plan',
              style: theme.textTheme.displayLarge,
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.filter_list_rounded,
              color: MyColors.blackColor,
              size: 32,
            ),
          ],
        ),
        const SizedBox(height: 16),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return const PlanItemWidget();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: 5,
        ),
      ],
    );
  }
}
