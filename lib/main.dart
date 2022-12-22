import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_themes_bloc/core/routes/app_routes.dart';
import 'package:multiple_themes_bloc/core/services/service_locator.dart';
import 'package:multiple_themes_bloc/core/theme/bloc/theme_bloc.dart';
import 'package:multiple_themes_bloc/core/utils/app_strings.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => sl<ThemeBloc>()..add(GetCurrentThemeEvent()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state is LoadedThemeState) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: AppStrings.appName,
              theme: state.themeData,
              onGenerateRoute: AppRoutes.onGenerateRoute,
            );
          }
          return Container();
        },
      ),
    );
  }
}
