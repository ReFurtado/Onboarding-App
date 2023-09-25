// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, unused_field, unused_local_variable, prefer_final_fields, unused_element, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/password_state.dart';
import 'package:flutter_application_1/screens/onboarding/email_request.dart';
import 'package:flutter_application_1/screens/onboarding/result_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class PasswordRequesState extends StatefulWidget {
  @override
  State<PasswordRequesState> createState() => _PasswordRequesStateState();
}

class _PasswordRequesStateState extends State<PasswordRequesState> {
  final _passwordController = TextEditingController();
  bool _isObscure = true;
  bool errorMin = false;
  bool _senhaInvalida = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Form(
            //key: _passwordFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => EmailRequest(),
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
                  child: Row(
                    children: [
                      Text(
                        'Qual a sua senha?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                //Form
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 30
                  ),
                  child: SizedBox(
                    height: 60,
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black45,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black45,
                          )
                        ),
                        labelText: 'Senha',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  )
                ),             
                //Messagem erro
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40
                  ),
                  child: PasswordState(errorMin: _senhaInvalida),
                ),
                Spacer(),     
                //Botão
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 60
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                      elevation: MaterialStateProperty.all(0),
                    ),               
                    onPressed: () {
                      String password = _passwordController.text;
                      final senhaRegex = RegExp(r'^(?=.*[A-Z]).{8,}$');                 
                      if(!senhaRegex.hasMatch(password)) {
                        setState(() {
                          _senhaInvalida = true;
                        });
                      } else {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ResultScreen()));
                        });
                      }
                    },                  
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10, 
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


