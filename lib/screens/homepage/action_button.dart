
// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import '../../data/repository/itens_repository.dart';

class ActionButton extends StatelessWidget {
  final itens = ItensRepository.itens;
  int i = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                for (int i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [            
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.grey.shade300,
                          elevation: 0,
                          child: Icon(
                            itens[i].icon.icon,
                            size: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        itens[i].name,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                        ),
                      ),
                    ],
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