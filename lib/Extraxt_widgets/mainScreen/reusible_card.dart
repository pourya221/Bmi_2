import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class Reusible_card extends StatelessWidget {
  final ontap;
  final Widget GivemeAwidget;
  final Color givemecolor;
  Reusible_card(
      {required this.GivemeAwidget, this.ontap, required this.givemecolor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: givemecolor, borderRadius: BorderRadius.circular(20)),
          child: GivemeAwidget,
        ),
      ),
    );
  }
}
