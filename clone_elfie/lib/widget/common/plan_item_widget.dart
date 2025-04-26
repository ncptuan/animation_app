import 'package:flutter/material.dart';

import '../widget.dart';

class PlanItemWidget extends StatelessWidget {
  const PlanItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                width: 50,
                height: 50,
                'assets/images/shoe.png',
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      'Notification',
                      style: theme.textTheme.displayMedium,
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Text(
                    'Notification',
                    style: theme.textTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          const PointWidget(),
        ],
      ),
    );
  }
}
