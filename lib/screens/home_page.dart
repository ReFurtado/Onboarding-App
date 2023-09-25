// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homepage/action_button.dart';
import 'package:flutter_application_1/screens/homepage/banners.dart';
import 'package:flutter_application_1/screens/homepage/cards_button.dart';
import 'package:flutter_application_1/screens/homepage/info_conta.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [  

              //Cabeçalho
              Container(
                padding: EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height / 6,
                color: Colors.blue.shade900,
                child: Column(
                  children: [
                    //Infos
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 16,
                          child: Icon(
                            FontAwesomeIcons.image, 
                            color: Colors.black, 
                            size: 16,
                          ),
                          ),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.eye, color: Colors.white, size: 16),
                            SizedBox(width: 20),
                            Icon(FontAwesomeIcons.question, color: Colors.white, size: 16),
                            SizedBox(width: 20),
                            Icon(FontAwesomeIcons.envelope, color: Colors.white, size: 16),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    //Nome
                    Row(
                      children: [
                        Text(
                          'Olá,',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Pedro',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      
              //Conta
              SizedBox(
                height: 100,
                child: InfoConta(),
              ),

              //Botões de ação
              SizedBox(
                height: 100,
                child: ActionButton(),
              ),

              //Cartões
              SizedBox(
                height: 90,
                child: CardsButton(),
              ),

              Divider(),

              //Banners
              SizedBox(
                height: 300,
                child: Banners(),
              ),
      
      
      
      
      
            ],
          ),
        ),
      ),
    );
  }
}

