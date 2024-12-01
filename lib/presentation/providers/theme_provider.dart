import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false,);

final selectedColorProvider = StateProvider<int>((ref) => 0,);

final colorListProvider = Provider((ref) => colorList);

//Objeto de tipo AppTheme

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
  );


class ThemeNotifier extends StateNotifier<AppTheme>{
  ThemeNotifier(): super(AppTheme());

  void toggleDarkmode(){
  state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorTheme(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex );

  } 

}



