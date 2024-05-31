import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/bottom_navigation.dart';
import 'package:travel_app/screens/profile.dart';
import 'package:travel_app/screens/home.dart';
import 'package:travel_app/screens/search.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/providers/screen_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _screens = [
    const Home(),
    const Search(),
    const Profile(),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ScreenProvider>(
        builder: (context, provider, child) {
          return  PageView(
            // physics: const NeverScrollableScrollPhysics(),
            controller: provider.pageController,
            children: _screens,
          );
          // return _screens[provider.screen_index];
        }
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
