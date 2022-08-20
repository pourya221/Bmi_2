import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bmi_mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff546E7A),
        appBarTheme: AppBarTheme(
            color: Color(0xffA5D6A7), centerTitle: true, elevation: 8),
        sliderTheme: SliderThemeData(
            activeTrackColor: Colors.amberAccent,
            thumbColor: Colors.amber,
            overlayColor: Colors.indigoAccent.withOpacity(0.4),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 40),
            trackHeight: 15,
            valueIndicatorTextStyle: TextStyle(fontSize: 20),
            valueIndicatorColor: Colors.black),
      ),
      home: BmiMainScreen(),
    );
  }
}
