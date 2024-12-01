import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false,);

final selectedColorProvider = StateProvider<int>((ref) => 0,);

final colorListProvider = Provider((ref) => colorList);

