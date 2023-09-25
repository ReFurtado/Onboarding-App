// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class ResultScreen extends StatelessWidget {

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
                  'Parabéns!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),
                ),
                // Text(
                //   'BANK',
                //   style: TextStyle(
                //     fontSize: 28,
                //     fontWeight: FontWeight.w200,
                //   ),
                // )
              ],
            ),
            Spacer(),
            //Animação
            Hero(
              tag: 'lottie_animation',
              child: Lottie.network(
                'https://lottie.host/d0d2efd2-12aa-41fb-9394-740a56c71e9b/0LlRXotZv1.json'
              ),
            ),
            //Botão
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              },     
              child: Row(
                children: [
                  Row(
                    children: [                        
                      Text(
                        'Continuar',
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
      ),   
    );
  }
}