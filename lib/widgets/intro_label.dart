import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroLabel extends StatelessWidget { 
  final String subtitle;

  IntroLabel({ 
    Key? key,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              fontFamily: 'Geometric',
            ),
            children: [
              TextSpan(
                text: 'Life is short and the world is ',
              ),
              TextSpan(
                text: 'wide ',
                style: TextStyle(
                  color: Color(0xffFF7029)
                )
              ),
            ]
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            subtitle,
            style: const TextStyle(
              height: 1.7,
              color: Color(0xff7D848D),
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}