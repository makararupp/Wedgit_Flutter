import 'package:flutter/material.dart';
import 'package:projects/state_module/logics/counter_logic.dart';
import 'package:provider/provider.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().counter;
    return Container(
      alignment: Alignment.center,
      child: Text("Counter : $counter"),
    );
  }
}
