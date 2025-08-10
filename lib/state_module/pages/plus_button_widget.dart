import 'package:flutter/material.dart';
import 'package:projects/state_module/logics/counter_logic.dart';
import 'package:provider/provider.dart';

class PlusButtonWidget extends StatefulWidget {
  const PlusButtonWidget({super.key});

  @override
  State<PlusButtonWidget> createState() => _PlusButtonWidgetState();
}

class _PlusButtonWidgetState extends State<PlusButtonWidget> {
  @override
  Widget build(BuildContext context) {

    return IconButton(onPressed: () {
      context.read<CounterLogic>().increase();
    },
      icon: Icon(Icons.add ,color: Colors.white,size: 28.0,),
    );
  }

}
