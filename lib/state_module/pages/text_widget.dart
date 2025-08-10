import 'package:flutter/material.dart';
import 'package:projects/state_module/logics/counter_logic.dart';
import 'package:provider/provider.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().counter;
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(10.0),
        child: Text("The 2023 Southeast Asian Games (Khmer: ការប្រកួតកីឡាប្រជាជាតិអាស៊ីអាគ្នេយ៍២០២៣,"
            " UNGEGN: Kar Brâkuŏt Keila Brâchéachéatĕ Asi Aknéy 2023), also known as the 32nd "
            "Southeast Asian Games, or the 32nd SEA Games, and commonly known as Cambodia 2023,"
            " were the 32nd edition of the Southeast Asian Games, a biennial sports multi-sport "
            "event which was held from 5 to 17 May 2023 in Phnom Penh, Cambodia."
        , style: TextStyle(fontSize: 20 + counter.toDouble()),
        ),
      ),
    );
  }
}
