import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/providers/screen_provider.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600
          ),
          'Profile'
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Center(
              child: ClipOval(
                child: Image.asset(
                  'lib/images/profile.png',
                  width: 96.0,
                  height: 96.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            const Text(
              'Afiif Imanto',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24.0
              ),
            ),
            SizedBox(height: 2.0),
            const Text(
              'imantoafiif@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xff7D848D)
              ),
            ),
            SizedBox(height: 32.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                // color: Color(0xff898989),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.all(12.0),
                      child: const Column(
                        children: <Widget>[
                          SizedBox(height: 14.0),
                          Text(
                            'Reward Points',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '360',
                            style: TextStyle(
                              color: Color(0xff0D6EFD),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 14.0),
                        ],
                      ),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    color: Colors.white,
                    child: const Column(
                      children: <Widget>[
                        Text(
                          'Travel Tips',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '238',
                          style: TextStyle(
                            color: Color(0xff0D6EFD),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: const Column(
                        children: <Widget>[
                          Text(
                            'Bucket List',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '473',
                            style: TextStyle(
                              color: Color(0xff0D6EFD),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ],
              ),
            )
            
          ],
        )
      ),
    );
  }
}