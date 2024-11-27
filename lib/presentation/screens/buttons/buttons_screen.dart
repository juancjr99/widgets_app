import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';


class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttoms_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("ButtonScreen"),
      ),
      body: _ButtomsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          context.pop();
        }),
    );
  }
}

class _ButtomsView extends StatelessWidget {
  const _ButtomsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated')),

            const ElevatedButton(onPressed: null, child:  Text('Elevated Disabled')),

            ElevatedButton.icon(onPressed: (){}, label: const Text('Elevated Icon'), icon: const Icon(Icons.access_alarm_rounded),),

            FilledButton(onPressed: (){}, child: const Text('Filled')),

            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.insert_chart_outlined_sharp), label: const Text('Filled Icons')),

            OutlinedButton(onPressed: (){}, child: const Text('Outline')),

            OutlinedButton.icon(onPressed: (){}, label: const Text('Outline'), icon: const Icon(Icons.terminal),),

            TextButton(onPressed: (){}, child: const Text('Text')),

            TextButton.icon(onPressed: (){}, label: const Text('Text icon'),icon: Icon(Icons.person)),

            CustomButtom(),


            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded),),


          ],
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Custom Buttom", style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}