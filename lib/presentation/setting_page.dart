import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_themes_bloc/core/theme/app_theme.dart';
import 'package:multiple_themes_bloc/core/theme/bloc/theme_bloc.dart';
import 'package:multiple_themes_bloc/core/utils/app_strings.dart';
import 'package:multiple_themes_bloc/core/utils/app_values.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.setting),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(AppPadding.p20),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme]!.primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.name,
                textAlign: TextAlign.center,
                style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
              ),
              onTap: () {
                context
                    .read<ThemeBloc>()
                    .add(ThemeChangedEvent(theme: itemAppTheme));
              },
            ),
          );
        },
      ),
    );
  }
}
