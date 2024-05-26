import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/widgets/bottom_navigation.dart';
import 'package:travel_app/widgets/destination_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
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
                  child: Stack(
                    children: [
                      Icon(Icons.notifications_outlined),
                      // Positioned(
                      //   child: Container(
                      //     width: 18,
                      //     height: 18,
                      //     decoration: BoxDecoration(
                      //       color: Colors.red,
                      //       borderRadius: BorderRadius.all(Radius.circular(50.0))
                      //     ),
                      //     child: Center(
                      //       child: Text(
                      //         '9+',
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 10.0,
                      //           fontWeight: FontWeight.bold
                      //         ),
                      //       ),
                      //     ) 
                      //   ),
                      // )
                    ]
                  )
                  
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Color(0xfffdfdfd)], // Define the gradient colors
                    stops: [0.8, 1.0],
                  ),
                  // color: Colors.red,
                ),
                child: Column(
                  children: [
 
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 14.0),
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                        fontSize: 38.0,
                                        height: 1.3
                                      ),
                                      text: 'Explore the ',
                                      children: [
                                        TextSpan(
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600
                                          ),
                                          text: 'Beautiful '
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                            color: Color(0xffFF7029),
                                            fontWeight: FontWeight.w600
                                          ),
                                          text: 'world!'
                                        )
                                      ]
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -1.0,
                                    right: 20.0,
                                    child: Image.asset(
                                      width: 200,
                                      height: 10.34,
                                      'lib/images/tagline_decor.png'
                                    ),
                                  )
                                ],
                              ), 
                            ),
                            const SizedBox(height: 40.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'Best Destination',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('rumlow');
                                  },
                                  child: const Text(
                                    style: TextStyle(
                                      color: Color(0xff0D6EFD),
                                    ),
                                    'View all'
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) => DestinationCard(
                                    thumbnail: 'abc', 
                                    title: index.toString(), 
                                    location: 'abc'
                                  )
                                ),
                              ),
                            ),
                            const SizedBox(height: 40.0),
                          ],
                        )
                      )
                    )
                  ]
                )
              ),
            ),   
          ),
        ]
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
