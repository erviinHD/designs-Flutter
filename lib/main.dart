import 'package:fl_disenios/screens/basic_desing.dart';
import 'package:fl_disenios/screens/home_screen.dart';
import 'package:fl_disenios/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: 'home_design',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollScreen(),
        'home_design': (_) => const HomeScreen()
      },
    );
  }
}
