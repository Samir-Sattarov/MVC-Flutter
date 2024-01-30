import 'package:flutter/material.dart';

import 'src/view/screens/home_screen.dart';


class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,

        ),
        scaffoldBackgroundColor: Colors.green.shade100,
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const HomeScreen(),
    );
  }
}
