import 'package:clone_elfie/models/domain_model/plan_model_data.dart';
import 'package:clone_elfie/models/model.dart';

class HomeDataModel {
  List<PlanModelData>? planList;
  HightLightModel? hightLightComponent;
  HomeDataModel({
    this.planList,
    this.hightLightComponent,
  });
}

class HomeDataParam {
  HomeDataParam();
}
