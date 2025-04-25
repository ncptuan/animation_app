import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_dependencies.dart';
import '../bloc/bloc.dart';
import '../core/core.dart';
import '../models/model.dart';
import '../route/router.gr.dart';
import '../widget/widget.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final WelcomeBloc bloc = AppDependencies.injector.get<WelcomeBloc>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: bloc,
      builder: (context, state) {
        if (state is LoadedState) {
          return buildContent(context, state);
        } else {
          return const CustomLoadingWidget();
        }
      },
      listener: (context, state) {},
    );
  }

  Widget buildContent(BuildContext context, LoadedState state) {
    // final model = state.model as WelcomeDataModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("test app"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            
          ],
        ),
      ),
    );
  }
}
