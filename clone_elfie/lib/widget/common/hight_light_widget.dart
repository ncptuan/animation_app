import 'package:flutter/material.dart';

import '../../style/style.dart';

class HightLightWidget extends StatelessWidget {
  const HightLightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            MyColors.rewardTopLeftColor,
            MyColors.rewardBottomRightColor
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 100,
              width: 130,
              child: Image.asset(
                'assets/images/reward_hightlight.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Row(
                children: [
                  Image.asset(
                    'assets/images/vietnam_flag.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    'Joe • Cairo',
                    style: theme.primaryTextTheme.displayMedium,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(
                    Icons.lock_clock_rounded,
                    size: 16,
                    color: MyColors.whiteColor,
                  ),
                  const SizedBox(width: 3),
                  SizedBox(
                    width: 150,
                    child: Text(
                      'Redeemed 23 minutes of your time',
                      style: theme.primaryTextTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                'April Surprise',
                style: theme.primaryTextTheme.bodySmall,
              ),
            ],
          )
        ],
      ),
    );
  }
}
