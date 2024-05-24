import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String thumbnail;
  final String title;
  final String location;

  const DestinationCard({
    Key? key, 
    required this.thumbnail, 
    required this.title, 
    required this.location
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      margin: EdgeInsets.only(right: title == '9' ? 0 : 20.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'lib/images/location_thumb.png',
                      height: double.infinity,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    right: 14.0,
                    top: 14.0,
                    child: GestureDetector(
                      onTap: () {
                        print('bookmark');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(50.0)
                        ),
                        height: 34.0,
                        width: 34.0,
                        child: Icon(
                          color: Colors.white,
                          Icons.bookmark_add_outlined
                        ),
                      ),
                    ) 
                      
                  )
                ]
              ) 
            ),
          ),
          SizedBox(height: 18.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Niladri Reservoir',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Color(0xffFFD336),
                    ),
                    Text(
                      '4.7',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Icon(
                //   Icons.location_on_rounded,
                //   color: Color.fromARGB(123, 125, 132, 141)
                // ),
                Text(
                  'Palembang',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7D848D)
                  ),
                ),
                // Row(
                //   children: <Widget>[
                //     Icon(
                //       Icons.star,
                //       color: Color(0xffFFD336),
                //     ),
                //     Text(
                //       '4.7',
                //       style: TextStyle(
                //         fontSize: 18.0,
                //         fontWeight: FontWeight.w400
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
