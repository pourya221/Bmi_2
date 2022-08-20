import 'package:flutter/material.dart';
import 'package:flutter_application_1/Extraxt_widgets/bottom_Screen.dart';
import 'package:flutter_application_1/Extraxt_widgets/mainScreen/reusible_card.dart';
import 'package:flutter_application_1/constant.dart';

class ResultScreen extends StatefulWidget {
  final String getResult;
  final String getInterpretation;
  final String getupresult;
  ResultScreen(
      {Key? key,
      required this.getInterpretation,
      required this.getResult,
      required this.getupresult})
      : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result',
          style: KAppBarTextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Your Result',
            style: TextStyle(color: Colors.red, fontSize: 50),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Reusible_card(
                  GivemeAwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.getupresult,
                        style: TextStyle(fontSize: 25, color: Colors.green),
                      ),
                      Text(
                        widget.getResult,
                        style: TextStyle(fontSize: 80),
                      ),
                      Text(
                        widget.getInterpretation,
                        style: KInputCardTextStyle,
                      )
                    ],
                  ),
                  givemecolor: KInActiveColor),
            ),
          ),
          BottomScreen(
              textBottom: 'Re-Calcaulate',
              givemefunctionandgotthresultscreen: () {
                setState(() {
                  Navigator.pop(context);
                });
              })
        ],
      ),
    );
  }
}
