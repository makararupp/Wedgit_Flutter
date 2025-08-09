import 'package:flutter/material.dart';
import 'package:projects/nonestate_module/nonestate_page.dart';

class NoneStateApp extends StatelessWidget {
  const NoneStateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NoneStatePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontSizeFactor: 1.6, // Scale up all text sizes by 20%
        ),
      ),
    );
  }
}
