import 'package:clone_elfie/models/domain_model/plan_model_data.dart';
import '../../core/core.dart';
import '../../models/model.dart';

class HomeBloc extends BaseCubit<HomeDataModel, HomeDataParam> {
  HomeBloc()
      : super(
          InitState(),
          model: HomeDataModel(
            planList: [
              PlanModelData(
                description: 'Step - today',
                image: 'assets/images/shoe.png',
                targetValue: 5000,
                currentValue: 625,
                point: 0.05,
              ),
              PlanModelData(
                description: 'Body scan - this month',
                image: 'assets/images/scan_body.png',
                targetValue: 1,
                currentValue: 0,
                point: 500,
              ),
              PlanModelData(
                title: "Notification",
                description: 'Allow permission',
                image: 'assets/images/bell.png',
                point: 100,
              ),
              PlanModelData(
                title: "Medical conditions",
                description: 'Review your profile',
                image: 'assets/images/medical_conditions.png',
                point: 200,
              ),
              PlanModelData(
                title: "Nutrition program",
                description: 'Set up your program',
                image: 'assets/images/nutrition_program.png',
                point: 100,
              ),
            ],
            hightLightComponent: HightLightModel(
              title: 'Joe • Cairo',
              image: 'assets/images/reward_hightlight.jpg',
              logoImage: 'assets/images/vietnam_flag.png',
              description: 'April Surprise',
              time: DateTime.now().add(const Duration(days: 1)),
            ),
          ),
          param: HomeDataParam(),
        );

  @override
  void initState() {
    emit(LoadingState());
    emit(LoadedState(model, param));
  }
}
