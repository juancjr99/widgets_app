import 'package:flutter/material.dart';


class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttoms_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("ButtonScreen"),
      ),
      body: const Placeholder(),
    );
  }
}