// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(60),
          child: Column(
            children: [
              Spacer(),
              //Logo
              Row(
                children: [
                  Text(
                    'FT',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'BANK',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w200,
                    ),
                  )
                ],
              ),
              Spacer(),
              //Animação
              Lottie.network(
                'https://lottie.host/c194e65f-8743-41ac-b8aa-e453818137b2/HCs79TeFTP.json'
              ),
              //Botão 
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignUpScreen()
                  ));
                },     
                child: Row(
                  children: [
                    Row(
                      children: [                        
                        Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                    Icon(FontAwesomeIcons.chevronRight, 
                      size: 16, 
                      color: Color.fromARGB(255, 77, 118, 151),
                    ),                        
                  ],
                ),             
              ),
              Spacer(),
            ],
          )
        )
    );
  }
}