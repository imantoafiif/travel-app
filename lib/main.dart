import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_page.dart';
import './screens/intro.dart';
import './screens/login.dart';
import './screens/home.dart';
import 'screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomePage(),
      home: const Intro(),
      routes: {
        '/intro' : (context) => const Intro(),
        '/login' : (context) => const Login(),
        '/home' : (context) => const Home(),
        '/search': (context) => const Search(),
      },
    );
  }
}
