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
                  color: Colors.red,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: const Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 50.0,
                              ),
                              Text('Afiif Imanto')
                            ],
                          ),
                        ),
                        const Text('text')
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
                  color: Colors.tealAccent,
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
                  color: Colors.brown,
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
                  color: Colors.blueAccent,
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
