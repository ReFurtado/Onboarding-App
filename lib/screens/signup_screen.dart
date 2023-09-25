// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/onboarding/email_request.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40, 
            vertical: 10,
          ),
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
              SizedBox(height: 12),
              //Info
              Row(
                children: [
                  Text(
                    'Inscreva-se ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Spacer(),
              //Apple
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {}, 
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12, 
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.apple,
                                size: 16,
                              ),
                              SizedBox(width: 10),
                              Text('Continue com Apple'),
                            ],
                          ),
                          Icon(FontAwesomeIcons.chevronRight, size: 16,)                        
                        ],
                      ),
                    )
                  ],
                )
              ),
              //Google
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {}, 
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12, 
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.google,
                                size: 16,
                              ),
                              SizedBox(width: 10),
                              Text('Continue com Goolgle'),
                            ],
                          ),
                          Icon(FontAwesomeIcons.chevronRight, size: 16,)                        
                        ],
                      ),
                    )
                  ],
                )
              ),
              //Email
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {}, 
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12, 
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.solidEnvelope,
                                size: 16,
                                color: Color.fromARGB(255, 77, 118, 151),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Continue com email',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 77, 118, 151),
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
                    )
                  ],
                )
              ),
              //Cadatro
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => EmailRequest(),
                  ));
                },     
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [                        
                        Text(
                          'Ainda não tem uma conta? Clique aqui',
                          style: TextStyle(
                            fontSize: 12,
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
              Spacer(flex: 2),
            ]
          ),
        ),
      )
    );
  }
}
