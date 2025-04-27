import '../../core/core.dart';
import '../../models/model.dart';

class HomeBloc extends BaseCubit<HomeDataModel, HomeDataParam> {
  HomeBloc()
      : super(
          InitState(),
          model: HomeDataModel(selectWordLength: 5),
          param: HomeDataParam(),
        );

  @override
  void initState() {
    emit(LoadingState());
    emit(LoadedState(model, param));
  }

  void onChangeWordLenth(int value) {
    model?.selectWordLength = value;
    emit(LoadedState(model, param));
  }
}
