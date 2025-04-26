import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widget/widget.dart';

@RoutePage()
class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reward')),
      body: const Center(child: Text('Reward Screen')),
    );
  }
}
