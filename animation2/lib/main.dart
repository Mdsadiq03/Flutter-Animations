import 'package:flutter/material.dart';
import 'dart:math' show pi;

void main(){
  runApp(
    const App(),
  );
}

class App extends StatelessWidget{
  const App({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: const Color(0xff0057b7),
              height: 100,
              width: 100,
            ),
            Container(
              color: const Color(0xffffd700),
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}