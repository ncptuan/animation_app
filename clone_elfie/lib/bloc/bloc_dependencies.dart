import 'package:get_it/get_it.dart';

import 'bloc.dart';

class BlocDependencies {
  static void init(GetIt injector) {
    injector.registerFactory<HomeBloc>(() => HomeBloc());
    injector.registerFactory<MapBloc>(() => MapBloc());
  }
}
