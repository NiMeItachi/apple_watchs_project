import 'package:b28_nursultan_suleymanov_exam5/screens/main_screen.dart';
import 'package:b28_nursultan_suleymanov_exam5/screens/watch1_screen.dart';
import 'package:b28_nursultan_suleymanov_exam5/screens/watch2_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      routes: {
        MainPage.id: (context) => const MainPage(),
        Watch1Page.id: (context) => const Watch1Page(),
        Watch2Page.id: (context) => const Watch2Page(),
      },
    );
  }
}
