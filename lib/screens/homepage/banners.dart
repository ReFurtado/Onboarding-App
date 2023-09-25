// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Banners extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Row(
            children: [
              for (int i = 0; i < 5; i++)
              Padding(
                padding: EdgeInsets.only(
                  right: 16
                ),
                child: Column(
                  children: [
                    //Imagem
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/family.jpg',
                          ),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    //Info
                    Container( 
                      width: 200,
                      height: 120,              
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Seguro de vida',
                              //textAlign: ,
                               style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Planeje seu futuro financeiro e ofereça segurança a sua família.',
                               style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54
                              ),
                            ),
                            TextButton(
                              onPressed: () {}, 
                              child: Text(
                                'Conhecer',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade900,
                                ),
                              )                     
                            )
                          ],
                        ),
                      ), 
                    ),     
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}