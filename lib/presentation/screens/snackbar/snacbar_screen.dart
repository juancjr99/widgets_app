import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/theme/router/app_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snacbar_screen';
  const SnackbarScreen({super.key});


  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar =SnackBar(
      content: const Text('Snackbar'),
      action: SnackBarAction(label: 'OK', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );

      ScaffoldMessenger.of(context).showSnackBar( snackbar);

  }

  void openDialog(BuildContext context){
    showDialog(context: context,
    barrierDismissible: false,
     builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Esse magna dolore officia duis voluptate aliqua nulla tempor sint incididunt cillum pariatur nostrud. Ex cillum nulla fugiat ullamco culpa. Dolore officia elit adipisicing enim duis. Consectetur aliqua occaecat do incididunt deserunt proident velit officia sint cupidatat nostrud labore. Qui elit cillum cupidatat irure laborum cupidatat tempor officia et adipisicing non.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
        
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar')),
        ],
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(context: context,
              children: [
                const Text('Consectetur eiusmod labore nostrud sint. Eu veniam irure elit ea culpa ullamco aliquip aliqua sunt. Dolor adipisicing exercitation magna consequat in. Fugiat incididunt deserunt ea magna deserunt ipsum esse qui. Non ea enim est veniam ex commodo eu magna amet esse ut adipisicing.'),
              ]
              );
            },
            child: const Text('Licencias usadas')),
            FilledButton.tonal(onPressed: (){
              openDialog(context);
            },

            child: const Text('Mostrar dialogo'))
          ],)
      ),


      floatingActionButton: FloatingActionButton.extended(
      label: const Text('Mostrar Snackbar'),
      icon: Icon(Icons.remove_red_eye_outlined),
      onPressed: (){

        showCustomSnackbar(context);

      }
      ),
    );
  }
}