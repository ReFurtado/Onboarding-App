// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordState extends StatelessWidget {
  final bool errorMin;

  PasswordState({required this.errorMin});

  @override
  Widget build(BuildContext context) {
    Color textColor = errorMin ? Colors.red : Colors.transparent;

    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: 30,
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.solidCircleCheck,
                  size: 12,
                  color: textColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Minimo de 8 caracteres',
                  style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                  ),
                ),
              ],
            ),                                
        ),
        SizedBox(
            width: double.infinity,
            height: 30,
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.solidCircleCheck,
                  size: 12,
                  color: textColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Minimo de uma letra maiscula',
                  style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                  ),
                ),
              ],
            ),                                
        ),
      ],
    );
  }
}

