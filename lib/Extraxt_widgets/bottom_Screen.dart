import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class BottomScreen extends StatelessWidget {
  late final givemefunctionandgotthresultscreen;
  late final String textBottom;
  BottomScreen(
      {required this.textBottom,
      required this.givemefunctionandgotthresultscreen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: givemefunctionandgotthresultscreen,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              textBottom,
              textAlign: TextAlign.center,
              style: KBottomTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
