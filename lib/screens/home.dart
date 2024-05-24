import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                        padding: EdgeInsets.symmetric(vertical: 14.0),
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 3.0),
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
                                    bottom: -3.0,
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
      bottomNavigationBar: Container(
        height: 98.0,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('btn_1');
                },
                child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text('data'),
                  ),
                )
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('btn_2');
                },
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child:GestureDetector(
                      onTap: () {
                        print('search');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff0D6EFD),
                          borderRadius: BorderRadius.circular(50.0)
                        ),
                        height: 50.0,
                        width: 50.0,
                        child: Center(
                          child: Image.asset(
                            width: 24.0,
                            height: 24.0,
                            'lib/images/search.png'
                          ),
                        ),
                      ),
                    ) ,
                  ),
                )
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('btn_3');
                },
                child: Container(
                  color: Colors.white,
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
