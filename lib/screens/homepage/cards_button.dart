// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardsButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ), 
                  width: MediaQuery.of(context).size.width / 2.4,            
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidCreditCard,
                        size: 16,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Cartões',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container( 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),            
                  width: MediaQuery.of(context).size.width / 2.4,       
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.fileInvoice,
                        size: 16,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Fatura',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),               
              ],
            )
          ],
        ),
      ),
    );
  }
}