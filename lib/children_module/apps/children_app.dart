import 'package:flutter/material.dart';
import 'package:projects/basic_module/screens/home_page.dart';
import 'package:projects/children_module/page/mian_page.dart';
import 'package:projects/children_module/page/pageview_page.dart';
import 'package:projects/children_module/page/row_column_page.dart';
import 'package:projects/children_module/page/tik_tok.dart';

import '../page/customscroll_page.dart';
import '../page/gridview_page.dart';
import '../page/listView_page.dart';
import '../page/list_view_page.dart';

class ChildrenApp extends StatelessWidget {
  const ChildrenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
