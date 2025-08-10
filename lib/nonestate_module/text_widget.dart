import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
   int counter = 0;
   //create constructor .. the same classes name.
   TextWidget(this.counter);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Counter :${widget.counter}"),
    );
  }
}
