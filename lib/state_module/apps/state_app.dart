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
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.blue,
          ),
          textTheme: Theme.of(context).textTheme.apply(
            fontSizeFactor: 1.2, // Scale up all text sizes by 20%
          ),
        ),
      ),
    );
  }
}
