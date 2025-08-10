import 'package:flutter/material.dart';
import 'package:projects/state_module/logics/counter_logic.dart';
import 'package:provider/provider.dart';

class MinusButtonWidget extends StatelessWidget {
  const MinusButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterLogic>().decrease();
      },
      icon: Icon(Icons.remove,color: Colors.white,size: 28.0,),
    );
  }
}
