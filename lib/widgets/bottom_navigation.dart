import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/providers/screen_provider.dart';
import 'package:travel_app/widgets/bottom_navigation_button.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  // void navigateToScreen(BuildContext context, String route) {
  //   if(ModalRoute.of(context)?.settings.name == route) {
  //     return;
  //   }
  //   Navigator.pushNamed(context, route);
  // }

  void navigateToScreen(ScreenProvider provider, int index) {
    provider.setScreenIndex(index);
  }

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(30.0),
        //   topRight: Radius.circular(30.0)
        // ),
        color: Colors.amber,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 2, // Spread radius
            blurRadius: 3, // Blur radius
            offset: Offset(0, 3), 
          )
        ]
      ),
      height: 98.0,
      child: Consumer<ScreenProvider>(
        builder: (context, provider, child) {
          return Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    navigateToScreen(provider, 0);
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
                          navigateToScreen(provider, 1);
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
                    navigateToScreen(provider, 2);
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
          );
        }
      )
    );
  }
}