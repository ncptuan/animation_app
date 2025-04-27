import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_dependencies.dart';
import '../bloc/bloc.dart';
import '../core/core.dart';
import '../helpers/helper.dart';
import '../models/model.dart';
import '../widget/widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc bloc = AppDependencies.injector.get<HomeBloc>();

  @override
  void initState() {
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
    final model = state.model as HomeDataModel;
    final planList = model.planList ?? [];
    return Scaffold(
      appBar: CustomAppBar(
        onClickAddButton: () {},
      ),
      body: Stack(
        children: [
          const AnimatedBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        HightLightWidget(
                          image: model.hightLightComponent?.image,
                          title: model.hightLightComponent?.title,
                          subTitle: model.hightLightComponent?.description,
                          logoImage: model.hightLightComponent?.logoImage,
                          unlockTime: DateTimeHelper.getTimeDifference(
                              model.hightLightComponent?.time ??
                                  DateTime.now()),
                        ),
                        const SizedBox(height: 20),
                        const TitleContent(),
                        const SizedBox(height: 16),
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return PlanItemWidget(
                              preIconImage: planList[index].image,
                              title: planList[index].title,
                              subTitle: planList[index].description,
                              point: planList[index].point,
                              currentPoints: planList[index].currentValue,
                              targetPoints: planList[index].targetValue,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              height: 16,
                            );
                          },
                          itemCount: planList.length,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
