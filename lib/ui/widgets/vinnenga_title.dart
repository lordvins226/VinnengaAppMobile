import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VinTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Vinn',
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 70,
            fontWeight: FontWeight.w700,
            color: Colors.green,
          ),
          children: [
            TextSpan(
              text: 'enga',
              style: TextStyle(color: Colors.black, fontSize: 55),
            ),
          ]),
    );
  }
}


