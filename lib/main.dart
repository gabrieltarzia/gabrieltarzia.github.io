import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_website/views/homePage/home.view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gabriel Tarzia',
      theme: ThemeData(
          cardColor: const Color.fromARGB(255, 104, 104, 104),
          cardTheme: CardTheme(
            margin: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24), // if you need this
              side: BorderSide(
                color: Colors.black.withOpacity(0.4),
                width: 5,
              ),
            ),
          ),
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: const Color.fromARGB(221, 65, 65, 65),
          primaryColor: Colors.grey),
      home: const HomePage(),
    );
  }
}
