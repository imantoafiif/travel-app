import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/bottom_navigation_button.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
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
                  child: BottomNavigationButton(
                    title: 'Home',
                    icon: 'lib/images/home.png',
                  )
                ),
              )
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                print('btn_1');
              },
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: BottomNavigationButton(
                    title: 'Calendar',
                    icon: 'lib/images/calendar.png',
                  )
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
                      Navigator.pushNamed(context, '/search');
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
                print('btn_1');
              },
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: BottomNavigationButton(
                    title: 'Messages',
                    icon: 'lib/images/chat.png',
                  )
                ),
              )
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                print('btn_1');
              },
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: BottomNavigationButton(
                    title: 'Profile',
                    icon: 'lib/images/user.png',
                  )
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}