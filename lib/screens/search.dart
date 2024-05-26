import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/bottom_navigation.dart';

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
      body: Column(
        children: <Widget>[
          Expanded(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('abc'),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}