// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoConta extends StatefulWidget {

  @override
  State<InfoConta> createState() => _InfoContaState();
}

class _InfoContaState extends State<InfoConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 26,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Conta',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 16,
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'R\$',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '120,00',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),     
    );
  }
}