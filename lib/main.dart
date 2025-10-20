import 'package:coffee_shop_app/Screens/onboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My coffe app",
      debugShowCheckedModeBanner: false,
      
      home: OnboardScreen()






    );

   
  }
}

