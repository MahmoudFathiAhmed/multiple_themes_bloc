import 'package:get_it/get_it.dart';
import 'package:multiple_themes_bloc/core/theme/bloc/theme_bloc.dart';


final sl = GetIt.instance;

class ServiceLocator {
  void init(){
    //BLOC
    sl.registerFactory(() => ThemeBloc());
  }
}