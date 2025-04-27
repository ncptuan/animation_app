import 'package:flutter/material.dart';

import '../../style/style.dart';
import '../widget.dart';

class PlanItemWidget extends StatelessWidget {
  final String? preIconImage;
  final String? title;
  final String? subTitle;
  final double? point;
  final int? currentPoints;
  final int? targetPoints;

  const PlanItemWidget({
    super.key,
    this.preIconImage,
    this.title,
    this.subTitle,
    this.point,
    this.currentPoints,
    this.targetPoints,
  });

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
                preIconImage ?? 'assets/images/shoe.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: (title != null)
                        ? Text(
                            title ?? 'Notification',
                            style: theme.textTheme.displayMedium,
                            maxLines: 2,
                            overflow: TextOverflow.visible,
                          )
                        : RichText(
                            text: TextSpan(
                              text: '$currentPoints',
                              style: theme.textTheme.displayMedium
                                  ?.copyWith(color: MyColors.primaryColor),
                              children: [
                                TextSpan(
                                  text: ' / ',
                                  style: theme.textTheme.displaySmall,
                                ),
                                TextSpan(
                                  text: ' $targetPoints',
                                  style: theme.textTheme.displayMedium,
                                ),
                              ],
                            ),
                          ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      subTitle ?? 'description',
                      style: theme.textTheme.displaySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
          PointWidget(
            value: point.toString(),
          ),
        ],
      ),
    );
  }
}
