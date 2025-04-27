import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../widget/widget.dart';

@RoutePage()
class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          const AnimatedBackground(),
          // Main content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Title
                  Text(
                    "We're working on it",
                    style: theme.primaryTextTheme.labelLarge,
                  ),

                  const SizedBox(height: 10),

                  // Subtext
                  Text(
                    "Please wait a moment",
                    style: theme.textTheme.displayLarge,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
