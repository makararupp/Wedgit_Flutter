import 'package:flutter/material.dart';
import 'package:projects/state_module/logics/counter_logic.dart';
import 'package:projects/state_module/pages/state_page.dart';
import 'package:provider/provider.dart';

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> CounterLogic()),
      ],
      child: MaterialApp(
        home: StatePage(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(
           canvasColor: Colors.white,
            appBarTheme: AppBarTheme(
              color: Colors.pinkAccent,
            ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            color: Colors.blueGrey[900],
          ),
        ),
      ),
    );
  }
}
