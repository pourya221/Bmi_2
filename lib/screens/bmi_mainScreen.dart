import 'package:flutter/material.dart';
import 'package:flutter_application_1/Extraxt_widgets/bmi-Brain.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/screens/result_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Extraxt_widgets/bottom_Screen.dart';
import '../Extraxt_widgets/mainScreen/input_Resuble_Card.dart';
import '../Extraxt_widgets/mainScreen/reusible_card.dart';

class BmiMainScreen extends StatefulWidget {
  const BmiMainScreen({Key? key}) : super(key: key);

  @override
  State<BmiMainScreen> createState() => _BmiMainScreenState();
}

int height = 180;
int weight = 75;
int age = 30;

Gender? selectGender;

enum Gender { Male, Female }

class _BmiMainScreenState extends State<BmiMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi', style: KAppBarTextStyle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Reusible_card(
                    givemecolor: selectGender == Gender.Male
                        ? KActiveColor
                        : KInActiveColor,
                    ontap: () {
                      setState(() {
                        selectGender = Gender.Male;
                        print('object');
                      });
                    },
                    GivemeAwidget: TopInputResubleCard(
                      givemeIcon: FontAwesomeIcons.male,
                      givemeText: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: Reusible_card(
                    givemecolor: selectGender == Gender.Female
                        ? KActiveColor
                        : KInActiveColor,
                    ontap: () {
                      setState(() {
                        selectGender = Gender.Female;
                      });
                    },
                    GivemeAwidget: TopInputResubleCard(
                      givemeIcon: FontAwesomeIcons.female,
                      givemeText: 'Female',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Reusible_card(
              givemecolor: KInActiveColor,
              GivemeAwidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'height',
                    style: KInputCardTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: KInputcardmidletextstyle),
                      Text('cm')
                    ],
                  ),
                  Slider(
                    inactiveColor: Colors.black12,
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    max: 220,
                    min: 120,
                  ),
                ],
              ),
            ),
          ),
          //Bottom.................///////////////////////////////////////////////////////
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Reusible_card(
                    givemecolor: KInActiveColor,
                    GivemeAwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'weight',
                          style: KInputCardTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: KInputcardmidletextstyle,
                            ),
                            Text('Kg'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Bottoninsidinputpage(
                                givemefinctionfromRawBottum: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                givemeiconbootum: FontAwesomeIcons.minus,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Bottoninsidinputpage(
                                givemefinctionfromRawBottum: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                givemeiconbootum: FontAwesomeIcons.plus,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ), ////////////////////////////////reight part///////////////////
                Expanded(
                  child: Reusible_card(
                    givemecolor: KInActiveColor,
                    GivemeAwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: KInputCardTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              age.toString(),
                              style: KInputcardmidletextstyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Bottoninsidinputpage(
                                givemefinctionfromRawBottum: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                givemeiconbootum: FontAwesomeIcons.minus,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Bottoninsidinputpage(
                                givemefinctionfromRawBottum: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                givemeiconbootum: FontAwesomeIcons.plus,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomScreen(
            textBottom: "Calculate",
            givemefunctionandgotthresultscreen: () {
              setState(() {
                var clc = Bmibrain();
                clc.height = height;
                clc.weight = weight;
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultScreen(
                    getResult: clc.getResult(),
                    getInterpretation: clc.getInterpretation(),
                    getupresult: clc.getupresult(),
                  );
                }));
              });
            },
          )
        ],
      ),
    );
  }
}
