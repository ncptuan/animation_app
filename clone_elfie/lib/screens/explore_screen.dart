import 'package:auto_route/auto_route.dart';
import 'package:clone_elfie/style/style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: MyColors.whiteColor,
          elevation: 0,
          title: Row(children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new,
                  color: MyColors.blackColor),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 150,
              child: TabBar(
                indicatorColor: MyColors.primaryColor,
                labelColor: MyColors.blackColor,
                unselectedLabelColor: MyColors.greyColor,
                dividerColor: Colors.transparent,
                indicator: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: MyColors.primaryColor,
                      width: 3.0,
                    ),
                  ),
                ),
                labelStyle: theme.textTheme.displayMedium,
                tabs: const [
                  Tab(
                    text: 'Map',
                    iconMargin: EdgeInsets.all(0),
                  ),
                  Tab(text: 'Activities'),
                ],
              ),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          MapIntroduceWidget(),
          Center(child: Text('Activities')),
        ]),
      ),
    );
  }
}

class MapIntroduceWidget extends StatelessWidget {
  const MapIntroduceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: MyColors.surfaceColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 32),

          // Title
          Text(
            'Collect coins on the go',
            textAlign: TextAlign.center,
            style: theme.textTheme.displayLarge,
          ),

          const SizedBox(height: 12),

          // Description
          Text(
            'Explore the map and discover hidden coins\naround you. Keep moving and collecting!',
            textAlign: TextAlign.center,
            style: theme.textTheme.displaySmall,
          ),

          const SizedBox(height: 32),

          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      MyColors.primaryColor.withOpacity(0.3),
                      Colors.transparent,
                    ],
                    stops: const [0.5, 1.0],
                  ),
                ),
              ),
              Lottie.asset(
                'assets/animations/explore_animation.json',
                fit: BoxFit.cover,
              ),
            ],
          ),

          const Spacer(),

          // Bottom Button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.blackColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "Let's go!",
                style: theme.primaryTextTheme.bodyMedium,
              ),
            ),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
