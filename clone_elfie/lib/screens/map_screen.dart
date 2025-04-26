import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widget/widget.dart';

@RoutePage()
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map')),
      body: const Center(child: Text('Map Screen')),
    );
  }
}
