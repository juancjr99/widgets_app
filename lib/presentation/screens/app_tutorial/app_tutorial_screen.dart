import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl,);

}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Laborum ex exercitation fugiat elit Lorem eu.', 'assets/images/1.png'),
  
   SlideInfo('Entrega rapida', 'Ea ullamco incididunt aliquip quis aute.', 'assets/images/2.png'),
  
   SlideInfo('Disfruta la comida', 'Aute deserunt ex voluptate culpa ullamco laborum.', 'assets/images/3.png'),

];

class AppTutorialScreen extends StatefulWidget {

  static const name = 'app_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  late final PageController pageViewController = PageController() ;
  bool endReached = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageViewController.addListener((){

      final page = pageViewController.page ?? 0;
      if(!endReached && page >= (slides.length-1.5)){

        setState(() {
          endReached = true;
        });
      }

    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: 
              slides.map((slideData) => _Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageUrl)).toList()
          
          ),

          Positioned(
            right: 20,
            top: 20,
            child: TextButton(onPressed: () => context.pop(), child: Text('Skip')) ,),

          endReached?
          Positioned(
            right: 30,
            bottom: 20,
            child: FadeInRight(
              from: 15,
              delay: const Duration(milliseconds: 500),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: Text('Comenzar'))) ,): const SizedBox(),

        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({super.key,
    required this.title,
    required this.caption,
    required this.imageUrl});

  @override
  Widget build(BuildContext context) {

final titleStyle = Theme.of(context).textTheme.titleLarge;
final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image(image: AssetImage('assets/images/1.png')),
            Icon(Icons.image_not_supported_outlined),
            const SizedBox(height: 20,),
            Text(title,style: titleStyle,),
            const SizedBox(height: 20,),
            Text(caption, style: captionStyle,),           
          ],
        ),
      ),
    );
  }
}