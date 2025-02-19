import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Introduccion a Riverpod',
    link: '/counter',
    icon: Icons.add,
  ),

  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

   MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Generals y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItem(
    title: 'Snackbars y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),

  MenuItem(
    title: 'Animated Container',
    subTitle: 'Statfull widget animado',
    link: '/animated',
    icon: Icons.check_box_outlined,
  ),

  MenuItem(
    title: 'Ui Controls + Tiles',
    subTitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),

  MenuItem(
    title: 'Introduccion a la aplicacion',
    subTitle: 'Tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility_new_rounded,
  ),

  MenuItem(
    title: 'InfiniteScroll and Pull',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),

  MenuItem(
    title: 'Cambiar tema',
    subTitle: 'Cambiar tema de al aplicacion',
    link: '/theme_changer',
    icon: Icons.color_lens_outlined,
  ),




];