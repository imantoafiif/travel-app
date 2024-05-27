import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/bottom_navigation.dart';
import 'package:travel_app/widgets/card.dart' as card;

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600
          ),
          'Search'
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF7F7F9),
                borderRadius: BorderRadius.all(Radius.circular(16.0))
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(width: 12.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Places',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xff7D848D),
                          fontWeight: FontWeight.w400
                        )
                      ),
                    ),
                  ),
                  SizedBox(width: 12.0),
                  Container(
                    padding: EdgeInsets.only(left: 12.0),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Color(0xffdfe0e3),
                          width: 1.5,
                        )
                      )
                    ),
                    child: GestureDetector(
                      onTap: () {
                        print('mic');
                      },
                      child: Icon(Icons.mic_none),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              child: const Text(
                'Search Places',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 15,
                mainAxisSpacing: 35,
                crossAxisCount: 2,
                children: [
                  const card.Card(),
                  const card.Card(),
                  const card.Card(),
                  const card.Card(),
                  const card.Card(),
                  const card.Card(),
                  const card.Card(),
                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}