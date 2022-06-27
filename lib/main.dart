import 'package:flutter/material.dart';
import 'package:practice_app/bottomNavBar.dart';
import 'package:practice_app/detailsScreen.dart';
import 'package:practice_app/pages/chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImportMe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/first-screen': (context) => ChatScreen(),
        '/second-screen': (context) => DetailsScreen(),
      },
      home: BottomNavBar(),
    );
  }
}
