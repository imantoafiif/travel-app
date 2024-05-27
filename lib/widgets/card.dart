import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  const Card({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              color: Colors.red,
            ),
            width: double.infinity,
            child: const Text(''),
          )
        ),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 6.0, left: 6.0),
              width: double.infinity,
                child: const Text(
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600
                ),
                'Nilandri Reservoir'
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6.0, top: 3.0),
              width: double.infinity,
                child: const Text(
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7D848D),
                ),
                'Palembang'
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6.0, top: 6.0),
              width: double.infinity,
              child: RichText(
                text: const TextSpan(
                  text: '\$894 / Person',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            
          ],
        ) 
      ],
    );
  }
}