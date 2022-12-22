import 'package:multiple_themes_bloc/core/utils/app_strings.dart';
import 'package:multiple_themes_bloc/core/utils/app_values.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCacheHelper {
  Future<void> cacheThemeIndex(int themeIndex) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt(AppStrings.themeIndex, themeIndex);
  }

  Future<int> getCachedThemeIndex() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedThemeIndex = sharedPreferences.getInt(AppStrings.themeIndex);
    if (cachedThemeIndex != null) {
      return cachedThemeIndex;
    } else {
      return AppCount.c0;
    }
  }
}