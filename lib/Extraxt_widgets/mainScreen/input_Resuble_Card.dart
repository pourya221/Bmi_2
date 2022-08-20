import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant.dart';

//Top Input
class TopInputResubleCard extends StatelessWidget {
  final IconData? givemeIcon;
  final String givemeText;
  TopInputResubleCard({required this.givemeIcon, required this.givemeText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          givemeIcon,
          size: 60,
        ),
        SizedBox(height: 15),
        Text(
          givemeText,
          style: KInputCardTextStyle,
        )
      ],
    );
  }
}

//down input resuble card
class Bottoninsidinputpage extends StatelessWidget {
  final givemefinctionfromRawBottum;
  late final IconData givemeiconbootum;
  Bottoninsidinputpage(
      {required this.givemefinctionfromRawBottum,
      required this.givemeiconbootum});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 10,
      constraints: BoxConstraints(minHeight: 50, minWidth: 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(width: 4, color: Colors.amber),
      ),
      fillColor: Color(0xffAD1457),
      onPressed: givemefinctionfromRawBottum,
      child: FaIcon(givemeiconbootum),
    );
  }
}
