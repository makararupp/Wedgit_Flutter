import 'package:flutter/material.dart';
import 'package:projects/basic_module/screens/home_page.dart';
import 'package:projects/children_module/page/row_column_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RowColumnPage(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(
      //    color: Colors.blueAccent,
      //     centerTitle: true,
      //   ),
      //   bottomAppBarTheme: BottomAppBarTheme(
      //       color: Colors.blue
      //   ),
      //   floatingActionButtonTheme: FloatingActionButtonThemeData(
      //     backgroundColor: Colors.blueGrey,
      //   ),
      //   drawerTheme: DrawerThemeData(
      //     width: 350,
      //     backgroundColor: Colors.blue.withOpacity(0.7),
      //   ),
      //   listTileTheme: ListTileThemeData(
      //     iconColor: Colors.white,
      //     textColor: Colors.white,
      //   ),
      //   textTheme: TextTheme(
      //     headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      //     titleMedium: TextStyle(fontSize: 20, color: Colors.blue),
      //     bodySmall: TextStyle(fontSize: 14, color: Colors.grey),
      //   ),
      // ),
    );
  }
}
