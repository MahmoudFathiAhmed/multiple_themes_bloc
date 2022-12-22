import 'package:flutter/material.dart';
import 'package:multiple_themes_bloc/core/routes/routes_names.dart';
import 'package:multiple_themes_bloc/core/utils/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.home),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.settingRoute);
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          AppStrings.home,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
