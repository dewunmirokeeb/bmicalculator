// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Leadingwidget extends StatelessWidget {
  const Leadingwidget(this.text,this.icons,{Key? key,}) : super(key: key);

  final String text;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 80,
          ),

        const SizedBox(
          height: 15,
        ),

        Text(
          text,
           style: const TextStyle(
             color: Color(0xFF8D8E98),
             fontSize: 18,
             ),
          ),

      ],
      );
  }
}

class Reusablecontainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Reusablecontainer(this.colour, this.cardchild);
  final Color colour;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(    
        child: cardchild,            
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
          ),
        
      ),
    );
  }
}
 