import 'package:flutter/material.dart';
import 'package:projects/basic_module/screens/home_page.dart';
import 'package:projects/children_module/page/row_column_page.dart';

class ChildrenApp extends StatelessWidget {
  const ChildrenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RowColumnPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
         backgroundColor: Colors.black,
          centerTitle: true,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 20.0),
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 20, color: Colors.blue),
          bodySmall: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ),
    );
  }
}
