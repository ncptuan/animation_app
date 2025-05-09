import 'package:get_it/get_it.dart';
import 'bloc/bloc.dart';

class AppDependencies {
  AppDependencies._();

  static GetIt injector = GetIt.instance;

  static Future initDependencies() async {
    BlocDependencies.init(injector);
  }
}
