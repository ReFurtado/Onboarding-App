// ignore_for_file: prefer_const_constructors

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Itens {
  late FaIcon icon;
  late String name;

  Itens({
    required this.icon,
    required this.name,
  });
}

class ItensRepository {
  static List<Itens> itens = [
    Itens(
      icon: FaIcon(FontAwesomeIcons.pix), 
      name: 'Pix',
    ),
    Itens(
      icon: FaIcon(FontAwesomeIcons.barcode),  
      name: 'Pagar',
    ),
    Itens(
      icon: FaIcon(FontAwesomeIcons.moneyBillTransfer),  
      name: 'Transferir',
    ),
    Itens(
      icon: FaIcon(FontAwesomeIcons.mobileButton),   
      name: 'Recargas',
    ),
    Itens(
      icon: FaIcon(FontAwesomeIcons.shieldHeart),  
      name: 'Seguros',
    ),

  ];
}