import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  final String name;
  final String location;
  final String price;
  final String image;

  String get names => name;

  const Card({ 
    Key? key,
    required this.name,
    required this.location,
    required this.price,
    required this.image,
  });

  

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              child: Image.asset(
                fit: BoxFit.cover,
                'lib/images/location_thumb.png'
              ),
            ) 
          )
        ),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 6.0, left: 6.0),
              width: double.infinity,
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6.0, top: 3.0),
              width: double.infinity,
                child: Text(
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7D848D),
                ),
                location
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6.0, top: 6.0),
              width: double.infinity,
              child: RichText(
                text: TextSpan(
                  text: '\$$price / ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D6EFD),
                    fontSize: 12.0,
                  ),
                  children: [
                    const TextSpan(
                      text: 'Person',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7D848D),
                        fontSize: 12.0,
                      ),
                    ),
                  ]
                ),
              ),
            ),
            
          ],
        ) 
      ],
    );
  }
}