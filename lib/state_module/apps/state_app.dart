import 'package:flutter/material.dart';
import 'package:projects/state_module/logics/counter_logic.dart';
import 'package:projects/state_module/logics/theme_logic.dart';
import 'package:projects/state_module/pages/state_page.dart';
import 'package:provider/provider.dart';

Widget stateAppWithProvider(){
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=> CounterLogic()),
      ChangeNotifierProvider(create: (context)=> ThemeLogic()),
    ],
    child: StateApp(),
  );
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {

    ThemeMode mode = context.watch<ThemeLogic>().mode;

      return MaterialApp(
        home: StatePage(),
        debugShowCheckedModeBanner: false,
        themeMode: mode,
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
      );
  }
}
