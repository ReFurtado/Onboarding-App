// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/onboarding/password_request.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmailRequest extends StatefulWidget {
  @override
  State<EmailRequest> createState() => _EmailRequestState();
}

class _EmailRequestState extends State<EmailRequest> {
  final _emailFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  String _errorText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Form(
            key: _emailFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                      ),
                    );
                  }, 
                  icon: Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 16,
                  )
                ),
                //Info
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: Text(
                    'Qual o seu e-mail?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),                             
                //Form
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                          ),
                        ),                   
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 0, 0, 0)
                          ),
                        ),
                        labelText: 'Email', 
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 77, 118, 151),
                        ),
                      ),
                    ),
                  ),
                ),
                //Messagem erro
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidCircleXmark,
                        size: 12,
                        color: _errorText.isNotEmpty ? Colors.red : Colors.transparent,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Email inválido',
                        style: TextStyle(
                          fontSize: 12,
                          color: _errorText.isNotEmpty ? Colors.red : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                //Botão
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 60,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                      elevation: MaterialStateProperty.all(0),
                    ),       
                    onPressed: () {
                      final email = _emailController.text;
                      final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,}$');
                
                      if(!emailRegex.hasMatch(email)) {
                        setState(() {
                          _errorText = 'Email inválido';
                        });
                      } else {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => PasswordRequesState(),
                          ));
                        });
                      }
                    },                 
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
                                  SizedBox(width: 10),
                                  Text(
                                    'Continue',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(FontAwesomeIcons.chevronRight, 
                                size: 16, 
                                color: Colors.black,
                              ),                        
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

