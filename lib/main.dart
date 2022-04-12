import 'package:assignment5/ui/first_screen.dart';
import 'package:assignment5/ui/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.green
          )
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/second-screen':(context)=>SecondPage(),
      },
      home: FirstScreen(),
    );
  }
}

