import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          const Text('Circular progress indicator'),

          const SizedBox(height: 10,),
          const CircularProgressIndicator(strokeWidth: 2,),

          const SizedBox(height: 20,),
          const Text('Circular y linear progress indicator controlado'),
          const SizedBox(height: 10,),
          _ControlledProgresIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300),(value){
        return (value*2)/100;
      }).takeWhile((value)=> value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progressValue,strokeWidth: 2,backgroundColor: Colors.black12,),
              const SizedBox(width: 20,),
              Expanded(child:  LinearProgressIndicator(value: progressValue,)),
            ],
          ),
        );
      }
    );
  }
}