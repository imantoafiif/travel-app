import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LandingScreenState();
  }
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.red,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Color(0xffF7F7F9),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              ClipOval(
                                child: Image.asset(
                                  'lib/images/profile.png',
                                  width: 37.0,
                                  height: 37.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                'Imanto',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(width: 8.0)
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('rumlow');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffF7F7F9),
                              borderRadius: BorderRadius.circular(50.0)
                            ),
                            height: 44.0,
                            width: 44.0,
                            child: Center(
                              child: Icon(Icons.notification_add_outlined),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.green),
                        child: Center(
                          child: Text('content')
                        ),
                      )
                    )
                  ]
                )
              ),
            ),   
          ),
        ]
      ),
      bottomNavigationBar: Container(
        height: 98.0,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('rumlow');
                },
                child: Container(
                  // color: Colors.tealAccent,
                  child: const Center(
                    child: Text('data'),
                  ),
                )
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('rumlow');
                },
                child: Container(
                  // color: Colors.brown,
                  child: const Center(
                    child: Text('data'),
                  ),
                )
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('rumlow');
                },
                child: Container(
                  // color: Colors.blueAccent,
                  child: const Center(
                    child: Text('data'),
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
