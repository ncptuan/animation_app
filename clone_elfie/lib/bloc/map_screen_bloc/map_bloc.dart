import '../../core/core.dart';
import '../../models/model.dart';
import 'map_state.dart';

class MapBloc extends BaseCubit<MapDataModel, MapDataParam> {
  MapBloc()
      : super(
          InitState(),
          model: MapDataModel(),
          param: MapDataParam(),
        );

  @override
  void initState() {
    emit(LoadingState());
    emit(MoveToExploreScreen());
  }

  @override
  Future<void> close() async {
    emit(LoadingState());
    await super.close();
  }
}
