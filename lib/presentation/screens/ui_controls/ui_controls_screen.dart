import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: _UiControlsView(),
    );
  }
}

enum Transportation {car,plane,boat,submarine}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsBreaDinner = false;
  

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(value: isDeveloper,
          onChanged: (value){
              setState(() {
                isDeveloper = !isDeveloper;
                
              });
          },
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales') ,
          ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            
        RadioListTile(
          title: const Text('By Car'),
          subtitle: const Text('Viajar en carro'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation= Transportation.car;
        })),

        RadioListTile(
          title: const Text('By Plane'),
          subtitle: const Text('Viajar en avion'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation= Transportation.plane;
        })),

        RadioListTile(
          title: const Text('By boat'),
          subtitle: const Text('Viajar en bote'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation= Transportation.boat;
        })),

        RadioListTile(
          title: const Text('By Submarine'),
          subtitle: const Text('Viajar en Submarino'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation= Transportation.submarine;
        })),

          ],),

        CheckboxListTile(
          title: const Text("Desayuno?"),
          value: wantsBreakfast,
          onChanged: (value)=>setState(() {
            wantsBreakfast = !wantsBreakfast;
          })),

        CheckboxListTile(
          title: const Text("Almuerzo?"),
          value: wantsLunch,
          onChanged: (value)=>setState(() {
            wantsLunch = !wantsLunch;
          })),

        CheckboxListTile(
          title: const Text("Comida?"),
          value: wantsBreaDinner,
          onChanged: (value)=>setState(() {
            wantsBreaDinner = !wantsBreaDinner;
          })),  



      ],
    );
  }
}