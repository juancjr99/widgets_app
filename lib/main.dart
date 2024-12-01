import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/router/app_router.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';



void main() {
  runApp(
    const ProviderScope(
      child:  MainApp()
      )
    );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context,ref ) {
    // final theme =  ref.watch(isDarkmodeProvider);
    // final int selectedColor= ref.watch(selectedColorProvider);

    final appTheme = ref.watch(themeNotifierProvider);
    
    return MaterialApp.router(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      routerConfig: appRouter,
    );
  }
}
