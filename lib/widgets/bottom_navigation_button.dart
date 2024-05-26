import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationButton extends StatelessWidget {
  final String title;
  final String icon;

  const BottomNavigationButton({ 
    Key? key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          width: 24.0,
          height: 24.0,
          icon
        ),
        SizedBox(height: 2.0),
        Text(
          style: const TextStyle(
            fontSize: 12.0,
            color: Color(0xff7D848D),
          ),
          title
        ),
      ],
    );
  }
}